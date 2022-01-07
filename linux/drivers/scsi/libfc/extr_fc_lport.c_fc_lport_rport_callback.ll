; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_lport.c_fc_lport_rport_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_lport.c_fc_lport_rport_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { i32, i32, %struct.fc_rport_priv*, %struct.fc_rport_priv* }
%struct.fc_rport_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"Received a %d event for port (%6.6x)\0A\00", align 1
@LPORT_ST_DNS = common dso_local global i32 0, align 4
@LPORT_ST_RNN_ID = common dso_local global i32 0, align 4
@LPORT_ST_FDMI = common dso_local global i32 0, align 4
@LPORT_ST_DHBA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [134 x i8] c"Received an READY event on port (%6.6x) for the directory server, but the lport is not in the DNS or FDMI state, it's in the %d state\00", align 1
@FC_FID_DIR_SERV = common dso_local global i32 0, align 4
@FC_FID_MGMT_SERV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_lport*, %struct.fc_rport_priv*, i32)* @fc_lport_rport_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_lport_rport_callback(%struct.fc_lport* %0, %struct.fc_rport_priv* %1, i32 %2) #0 {
  %4 = alloca %struct.fc_lport*, align 8
  %5 = alloca %struct.fc_rport_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.fc_lport* %0, %struct.fc_lport** %4, align 8
  store %struct.fc_rport_priv* %1, %struct.fc_rport_priv** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %5, align 8
  %10 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @FC_LPORT_DBG(%struct.fc_lport* %7, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %12)
  %14 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %15 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %14, i32 0, i32 1
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %81 [
    i32 129, label %18
    i32 131, label %58
    i32 132, label %58
    i32 128, label %58
    i32 130, label %80
  ]

18:                                               ; preds = %3
  %19 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %20 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @LPORT_ST_DNS, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %18
  %25 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %5, align 8
  %26 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %27 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %26, i32 0, i32 3
  store %struct.fc_rport_priv* %25, %struct.fc_rport_priv** %27, align 8
  %28 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %29 = load i32, i32* @LPORT_ST_RNN_ID, align 4
  %30 = call i32 @fc_lport_enter_ns(%struct.fc_lport* %28, i32 %29)
  br label %57

31:                                               ; preds = %18
  %32 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %33 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @LPORT_ST_FDMI, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %5, align 8
  %39 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %40 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %39, i32 0, i32 2
  store %struct.fc_rport_priv* %38, %struct.fc_rport_priv** %40, align 8
  %41 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %42 = load i32, i32* @LPORT_ST_DHBA, align 4
  %43 = call i32 @fc_lport_enter_ms(%struct.fc_lport* %41, i32 %42)
  br label %56

44:                                               ; preds = %31
  %45 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %46 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %5, align 8
  %47 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %51 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @FC_LPORT_DBG(%struct.fc_lport* %45, i8* getelementptr inbounds ([134 x i8], [134 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32 %52)
  %54 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %5, align 8
  %55 = call i32 @fc_rport_logoff(%struct.fc_rport_priv* %54)
  br label %56

56:                                               ; preds = %44, %37
  br label %57

57:                                               ; preds = %56, %24
  br label %81

58:                                               ; preds = %3, %3, %3
  %59 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %5, align 8
  %60 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @FC_FID_DIR_SERV, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %58
  %66 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %67 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %66, i32 0, i32 3
  store %struct.fc_rport_priv* null, %struct.fc_rport_priv** %67, align 8
  br label %79

68:                                               ; preds = %58
  %69 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %5, align 8
  %70 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @FC_FID_MGMT_SERV, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %68
  %76 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %77 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %76, i32 0, i32 2
  store %struct.fc_rport_priv* null, %struct.fc_rport_priv** %77, align 8
  br label %78

78:                                               ; preds = %75, %68
  br label %79

79:                                               ; preds = %78, %65
  br label %81

80:                                               ; preds = %3
  br label %81

81:                                               ; preds = %3, %80, %79, %57
  %82 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %83 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %82, i32 0, i32 1
  %84 = call i32 @mutex_unlock(i32* %83)
  ret void
}

declare dso_local i32 @FC_LPORT_DBG(%struct.fc_lport*, i8*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @fc_lport_enter_ns(%struct.fc_lport*, i32) #1

declare dso_local i32 @fc_lport_enter_ms(%struct.fc_lport*, i32) #1

declare dso_local i32 @fc_rport_logoff(%struct.fc_rport_priv*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
