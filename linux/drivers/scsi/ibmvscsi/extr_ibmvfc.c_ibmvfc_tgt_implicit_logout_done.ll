; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_tgt_implicit_logout_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_tgt_implicit_logout_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvfc_event = type { %struct.TYPE_3__*, %struct.ibmvfc_host*, %struct.ibmvfc_target* }
%struct.TYPE_3__ = type { %struct.ibmvfc_implicit_logout }
%struct.ibmvfc_implicit_logout = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ibmvfc_host = type { i64, i32, i32 }
%struct.ibmvfc_target = type { i64, i64, i32 }

@IBMVFC_TGT_ACTION_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Implicit Logout succeeded\0A\00", align 1
@ibmvfc_release_tgt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Implicit Logout failed: rc=0x%02X\0A\00", align 1
@IBMVFC_HOST_ACTION_TGT_INIT = common dso_local global i64 0, align 8
@ibmvfc_tgt_send_plogi = common dso_local global i32 0, align 4
@IBMVFC_HOST_ACTION_QUERY_TGTS = common dso_local global i64 0, align 8
@IBMVFC_TGT_ACTION_DEL_RPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibmvfc_event*)* @ibmvfc_tgt_implicit_logout_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmvfc_tgt_implicit_logout_done(%struct.ibmvfc_event* %0) #0 {
  %2 = alloca %struct.ibmvfc_event*, align 8
  %3 = alloca %struct.ibmvfc_target*, align 8
  %4 = alloca %struct.ibmvfc_host*, align 8
  %5 = alloca %struct.ibmvfc_implicit_logout*, align 8
  %6 = alloca i32, align 4
  store %struct.ibmvfc_event* %0, %struct.ibmvfc_event** %2, align 8
  %7 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %2, align 8
  %8 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %7, i32 0, i32 2
  %9 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %8, align 8
  store %struct.ibmvfc_target* %9, %struct.ibmvfc_target** %3, align 8
  %10 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %2, align 8
  %11 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %10, i32 0, i32 1
  %12 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %11, align 8
  store %struct.ibmvfc_host* %12, %struct.ibmvfc_host** %4, align 8
  %13 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %2, align 8
  %14 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store %struct.ibmvfc_implicit_logout* %16, %struct.ibmvfc_implicit_logout** %5, align 8
  %17 = load %struct.ibmvfc_implicit_logout*, %struct.ibmvfc_implicit_logout** %5, align 8
  %18 = getelementptr inbounds %struct.ibmvfc_implicit_logout, %struct.ibmvfc_implicit_logout* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @be16_to_cpu(i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %23 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %23, align 4
  %26 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %2, align 8
  %27 = call i32 @ibmvfc_free_event(%struct.ibmvfc_event* %26)
  %28 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %29 = load i32, i32* @IBMVFC_TGT_ACTION_NONE, align 4
  %30 = call i32 @ibmvfc_set_tgt_action(%struct.ibmvfc_target* %28, i32 %29)
  %31 = load i32, i32* %6, align 4
  switch i32 %31, label %44 [
    i32 128, label %32
    i32 130, label %35
    i32 129, label %43
  ]

32:                                               ; preds = %1
  %33 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %34 = call i32 @tgt_dbg(%struct.ibmvfc_target* %33, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %48

35:                                               ; preds = %1
  %36 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %37 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %36, i32 0, i32 2
  %38 = load i32, i32* @ibmvfc_release_tgt, align 4
  %39 = call i32 @kref_put(i32* %37, i32 %38)
  %40 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %41 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %40, i32 0, i32 1
  %42 = call i32 @wake_up(i32* %41)
  br label %85

43:                                               ; preds = %1
  br label %44

44:                                               ; preds = %1, %43
  %45 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @tgt_err(%struct.ibmvfc_target* %45, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %44, %32
  %49 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %50 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @IBMVFC_HOST_ACTION_TGT_INIT, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %56 = load i32, i32* @ibmvfc_tgt_send_plogi, align 4
  %57 = call i32 @ibmvfc_init_tgt(%struct.ibmvfc_target* %55, i32 %56)
  br label %77

58:                                               ; preds = %48
  %59 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %60 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @IBMVFC_HOST_ACTION_QUERY_TGTS, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %76

64:                                               ; preds = %58
  %65 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %66 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %69 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %67, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %64
  %73 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %74 = load i32, i32* @IBMVFC_TGT_ACTION_DEL_RPORT, align 4
  %75 = call i32 @ibmvfc_set_tgt_action(%struct.ibmvfc_target* %73, i32 %74)
  br label %76

76:                                               ; preds = %72, %64, %58
  br label %77

77:                                               ; preds = %76, %54
  %78 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %79 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %78, i32 0, i32 2
  %80 = load i32, i32* @ibmvfc_release_tgt, align 4
  %81 = call i32 @kref_put(i32* %79, i32 %80)
  %82 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %83 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %82, i32 0, i32 1
  %84 = call i32 @wake_up(i32* %83)
  br label %85

85:                                               ; preds = %77, %35
  ret void
}

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @ibmvfc_free_event(%struct.ibmvfc_event*) #1

declare dso_local i32 @ibmvfc_set_tgt_action(%struct.ibmvfc_target*, i32) #1

declare dso_local i32 @tgt_dbg(%struct.ibmvfc_target*, i8*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @tgt_err(%struct.ibmvfc_target*, i8*, i32) #1

declare dso_local i32 @ibmvfc_init_tgt(%struct.ibmvfc_target*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
