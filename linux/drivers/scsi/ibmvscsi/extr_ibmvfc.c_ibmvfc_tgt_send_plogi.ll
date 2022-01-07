; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_tgt_send_plogi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_tgt_send_plogi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvfc_target = type { i32, i32, i64, %struct.ibmvfc_host* }
%struct.ibmvfc_host = type { i64 }
%struct.ibmvfc_port_login = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i8*, i8* }
%struct.ibmvfc_event = type { %struct.TYPE_3__, %struct.ibmvfc_target* }
%struct.TYPE_3__ = type { %struct.ibmvfc_port_login }

@disc_threads = common dso_local global i64 0, align 8
@IBMVFC_TGT_ACTION_INIT_WAIT = common dso_local global i32 0, align 4
@ibmvfc_tgt_plogi_done = common dso_local global i32 0, align 4
@IBMVFC_MAD_FORMAT = common dso_local global i32 0, align 4
@IBMVFC_PORT_LOGIN = common dso_local global i32 0, align 4
@default_timeout = common dso_local global i32 0, align 4
@IBMVFC_TGT_ACTION_NONE = common dso_local global i32 0, align 4
@ibmvfc_release_tgt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Sent port login\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibmvfc_target*)* @ibmvfc_tgt_send_plogi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmvfc_tgt_send_plogi(%struct.ibmvfc_target* %0) #0 {
  %2 = alloca %struct.ibmvfc_target*, align 8
  %3 = alloca %struct.ibmvfc_port_login*, align 8
  %4 = alloca %struct.ibmvfc_host*, align 8
  %5 = alloca %struct.ibmvfc_event*, align 8
  store %struct.ibmvfc_target* %0, %struct.ibmvfc_target** %2, align 8
  %6 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %7 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %6, i32 0, i32 3
  %8 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %7, align 8
  store %struct.ibmvfc_host* %8, %struct.ibmvfc_host** %4, align 8
  %9 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %10 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @disc_threads, align 8
  %13 = icmp sge i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %81

15:                                               ; preds = %1
  %16 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %17 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %16, i32 0, i32 0
  %18 = call i32 @kref_get(i32* %17)
  %19 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %20 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %19, i32 0, i32 2
  store i64 0, i64* %20, align 8
  %21 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %22 = call %struct.ibmvfc_event* @ibmvfc_get_event(%struct.ibmvfc_host* %21)
  store %struct.ibmvfc_event* %22, %struct.ibmvfc_event** %5, align 8
  %23 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %24 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, 1
  store i64 %26, i64* %24, align 8
  %27 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %28 = load i32, i32* @IBMVFC_TGT_ACTION_INIT_WAIT, align 4
  %29 = call i32 @ibmvfc_set_tgt_action(%struct.ibmvfc_target* %27, i32 %28)
  %30 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %5, align 8
  %31 = load i32, i32* @ibmvfc_tgt_plogi_done, align 4
  %32 = load i32, i32* @IBMVFC_MAD_FORMAT, align 4
  %33 = call i32 @ibmvfc_init_event(%struct.ibmvfc_event* %30, i32 %31, i32 %32)
  %34 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %35 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %5, align 8
  %36 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %35, i32 0, i32 1
  store %struct.ibmvfc_target* %34, %struct.ibmvfc_target** %36, align 8
  %37 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %5, align 8
  %38 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store %struct.ibmvfc_port_login* %39, %struct.ibmvfc_port_login** %3, align 8
  %40 = load %struct.ibmvfc_port_login*, %struct.ibmvfc_port_login** %3, align 8
  %41 = call i32 @memset(%struct.ibmvfc_port_login* %40, i32 0, i32 32)
  %42 = call i8* @cpu_to_be32(i32 1)
  %43 = load %struct.ibmvfc_port_login*, %struct.ibmvfc_port_login** %3, align 8
  %44 = getelementptr inbounds %struct.ibmvfc_port_login, %struct.ibmvfc_port_login* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  store i8* %42, i8** %45, align 8
  %46 = load i32, i32* @IBMVFC_PORT_LOGIN, align 4
  %47 = call i8* @cpu_to_be32(i32 %46)
  %48 = load %struct.ibmvfc_port_login*, %struct.ibmvfc_port_login** %3, align 8
  %49 = getelementptr inbounds %struct.ibmvfc_port_login, %struct.ibmvfc_port_login* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  store i8* %47, i8** %50, align 8
  %51 = call i32 @cpu_to_be16(i32 32)
  %52 = load %struct.ibmvfc_port_login*, %struct.ibmvfc_port_login** %3, align 8
  %53 = getelementptr inbounds %struct.ibmvfc_port_login, %struct.ibmvfc_port_login* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 8
  %55 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %56 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @cpu_to_be64(i32 %57)
  %59 = load %struct.ibmvfc_port_login*, %struct.ibmvfc_port_login** %3, align 8
  %60 = getelementptr inbounds %struct.ibmvfc_port_login, %struct.ibmvfc_port_login* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %5, align 8
  %62 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %63 = load i32, i32* @default_timeout, align 4
  %64 = call i64 @ibmvfc_send_event(%struct.ibmvfc_event* %61, %struct.ibmvfc_host* %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %15
  %67 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %68 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, -1
  store i64 %70, i64* %68, align 8
  %71 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %72 = load i32, i32* @IBMVFC_TGT_ACTION_NONE, align 4
  %73 = call i32 @ibmvfc_set_tgt_action(%struct.ibmvfc_target* %71, i32 %72)
  %74 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %75 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %74, i32 0, i32 0
  %76 = load i32, i32* @ibmvfc_release_tgt, align 4
  %77 = call i32 @kref_put(i32* %75, i32 %76)
  br label %81

78:                                               ; preds = %15
  %79 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %80 = call i32 @tgt_dbg(%struct.ibmvfc_target* %79, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %81

81:                                               ; preds = %14, %78, %66
  ret void
}

declare dso_local i32 @kref_get(i32*) #1

declare dso_local %struct.ibmvfc_event* @ibmvfc_get_event(%struct.ibmvfc_host*) #1

declare dso_local i32 @ibmvfc_set_tgt_action(%struct.ibmvfc_target*, i32) #1

declare dso_local i32 @ibmvfc_init_event(%struct.ibmvfc_event*, i32, i32) #1

declare dso_local i32 @memset(%struct.ibmvfc_port_login*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i64 @ibmvfc_send_event(%struct.ibmvfc_event*, %struct.ibmvfc_host*, i32) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @tgt_dbg(%struct.ibmvfc_target*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
