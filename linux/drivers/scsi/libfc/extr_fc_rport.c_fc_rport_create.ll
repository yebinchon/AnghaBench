; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_rport_priv = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.fc_lport*, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i64 }
%struct.fc_lport = type { i64, %struct.TYPE_6__, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@FC_RPORT_ROLE_UNKNOWN = common dso_local global i32 0, align 4
@RPORT_ST_INIT = common dso_local global i32 0, align 4
@RPORT_EV_NONE = common dso_local global i32 0, align 4
@FC_RP_FLAGS_REC_SUPPORTED = common dso_local global i32 0, align 4
@FC_MIN_MAX_PAYLOAD = common dso_local global i32 0, align 4
@fc_rport_timeout = common dso_local global i32 0, align 4
@fc_rport_work = common dso_local global i32 0, align 4
@FC_FID_DIR_SERV = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fc_rport_priv* @fc_rport_create(%struct.fc_lport* %0, i64 %1) #0 {
  %3 = alloca %struct.fc_rport_priv*, align 8
  %4 = alloca %struct.fc_lport*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.fc_rport_priv*, align 8
  %7 = alloca i64, align 8
  store %struct.fc_lport* %0, %struct.fc_lport** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 80, i64* %7, align 8
  %8 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %9 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %11 = call i32 @lockdep_assert_held(i32* %10)
  %12 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %13 = load i64, i64* %5, align 8
  %14 = call %struct.fc_rport_priv* @fc_rport_lookup(%struct.fc_lport* %12, i64 %13)
  store %struct.fc_rport_priv* %14, %struct.fc_rport_priv** %6, align 8
  %15 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %16 = icmp ne %struct.fc_rport_priv* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  store %struct.fc_rport_priv* %18, %struct.fc_rport_priv** %3, align 8
  br label %107

19:                                               ; preds = %2
  %20 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %21 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ugt i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %26 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %7, align 8
  br label %28

28:                                               ; preds = %24, %19
  %29 = load i64, i64* %7, align 8
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.fc_rport_priv* @kzalloc(i64 %29, i32 %30)
  store %struct.fc_rport_priv* %31, %struct.fc_rport_priv** %6, align 8
  %32 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %33 = icmp ne %struct.fc_rport_priv* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  store %struct.fc_rport_priv* null, %struct.fc_rport_priv** %3, align 8
  br label %107

35:                                               ; preds = %28
  %36 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %37 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %36, i32 0, i32 13
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store i32 -1, i32* %38, align 8
  %39 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %40 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %39, i32 0, i32 13
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  store i32 -1, i32* %41, align 4
  %42 = load i64, i64* %5, align 8
  %43 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %44 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %43, i32 0, i32 13
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 3
  store i64 %42, i64* %45, align 8
  %46 = load i32, i32* @FC_RPORT_ROLE_UNKNOWN, align 4
  %47 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %48 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %47, i32 0, i32 13
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  store i32 %46, i32* %49, align 8
  %50 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %51 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %50, i32 0, i32 12
  %52 = call i32 @kref_init(i32* %51)
  %53 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %54 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %53, i32 0, i32 11
  %55 = call i32 @mutex_init(i32* %54)
  %56 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %57 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %58 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %57, i32 0, i32 10
  store %struct.fc_lport* %56, %struct.fc_lport** %58, align 8
  %59 = load i32, i32* @RPORT_ST_INIT, align 4
  %60 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %61 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %60, i32 0, i32 9
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* @RPORT_EV_NONE, align 4
  %63 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %64 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %63, i32 0, i32 8
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* @FC_RP_FLAGS_REC_SUPPORTED, align 4
  %66 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %67 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %66, i32 0, i32 7
  store i32 %65, i32* %67, align 4
  %68 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %69 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %72 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %71, i32 0, i32 6
  store i32 %70, i32* %72, align 8
  %73 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %74 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %77 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %76, i32 0, i32 5
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* @FC_MIN_MAX_PAYLOAD, align 4
  %79 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %80 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %79, i32 0, i32 4
  store i32 %78, i32* %80, align 8
  %81 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %82 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %81, i32 0, i32 3
  %83 = load i32, i32* @fc_rport_timeout, align 4
  %84 = call i32 @INIT_DELAYED_WORK(i32* %82, i32 %83)
  %85 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %86 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %85, i32 0, i32 2
  %87 = load i32, i32* @fc_rport_work, align 4
  %88 = call i32 @INIT_WORK(i32* %86, i32 %87)
  %89 = load i64, i64* %5, align 8
  %90 = load i64, i64* @FC_FID_DIR_SERV, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %105

92:                                               ; preds = %35
  %93 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %94 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %98 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  %99 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %100 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %99, i32 0, i32 0
  %101 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %102 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = call i32 @list_add_rcu(i32* %100, i32* %103)
  br label %105

105:                                              ; preds = %92, %35
  %106 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  store %struct.fc_rport_priv* %106, %struct.fc_rport_priv** %3, align 8
  br label %107

107:                                              ; preds = %105, %34, %17
  %108 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %3, align 8
  ret %struct.fc_rport_priv* %108
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local %struct.fc_rport_priv* @fc_rport_lookup(%struct.fc_lport*, i64) #1

declare dso_local %struct.fc_rport_priv* @kzalloc(i64, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @list_add_rcu(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
