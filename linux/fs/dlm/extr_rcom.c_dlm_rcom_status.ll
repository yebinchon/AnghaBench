; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_rcom.c_dlm_rcom_status.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_rcom.c_dlm_rcom_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.dlm_ls = type { i32, %struct.dlm_rcom* }
%struct.dlm_rcom = type { i32, i32, i64 }
%struct.dlm_mhandle = type { i32 }
%struct.rcom_status = type { i32 }

@DLM_RCOM_STATUS = common dso_local global i32 0, align 4
@dlm_config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@rcom_response = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"remote node %d not ready\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlm_rcom_status(%struct.dlm_ls* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dlm_ls*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dlm_rcom*, align 8
  %8 = alloca %struct.dlm_mhandle*, align 8
  %9 = alloca i32, align 4
  store %struct.dlm_ls* %0, %struct.dlm_ls** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %12 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 (...) @dlm_our_nodeid()
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %3
  %17 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %18 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %17, i32 0, i32 1
  %19 = load %struct.dlm_rcom*, %struct.dlm_rcom** %18, align 8
  store %struct.dlm_rcom* %19, %struct.dlm_rcom** %7, align 8
  %20 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %21 = call i32 @dlm_recover_status(%struct.dlm_ls* %20)
  %22 = load %struct.dlm_rcom*, %struct.dlm_rcom** %7, align 8
  %23 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  br label %89

24:                                               ; preds = %3
  br label %25

25:                                               ; preds = %62, %24
  %26 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @DLM_RCOM_STATUS, align 4
  %29 = call i32 @create_rcom(%struct.dlm_ls* %26, i32 %27, i32 %28, i32 4, %struct.dlm_rcom** %7, %struct.dlm_mhandle** %8)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %89

33:                                               ; preds = %25
  %34 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %35 = load %struct.dlm_rcom*, %struct.dlm_rcom** %7, align 8
  %36 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to %struct.rcom_status*
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @set_rcom_status(%struct.dlm_ls* %34, %struct.rcom_status* %38, i32 %39)
  %41 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %42 = load %struct.dlm_rcom*, %struct.dlm_rcom** %7, align 8
  %43 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %42, i32 0, i32 1
  %44 = call i32 @allow_sync_reply(%struct.dlm_ls* %41, i32* %43)
  %45 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %46 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %45, i32 0, i32 1
  %47 = load %struct.dlm_rcom*, %struct.dlm_rcom** %46, align 8
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dlm_config, i32 0, i32 0), align 4
  %49 = call i32 @memset(%struct.dlm_rcom* %47, i32 0, i32 %48)
  %50 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %51 = load %struct.dlm_mhandle*, %struct.dlm_mhandle** %8, align 8
  %52 = load %struct.dlm_rcom*, %struct.dlm_rcom** %7, align 8
  %53 = call i32 @send_rcom(%struct.dlm_ls* %50, %struct.dlm_mhandle* %51, %struct.dlm_rcom* %52)
  %54 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %55 = call i32 @dlm_wait_function(%struct.dlm_ls* %54, i32* @rcom_response)
  store i32 %55, i32* %9, align 4
  %56 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %57 = call i32 @disallow_sync_reply(%struct.dlm_ls* %56)
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @ETIMEDOUT, align 4
  %60 = sub nsw i32 0, %59
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %33
  br label %25

63:                                               ; preds = %33
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  br label %89

67:                                               ; preds = %63
  %68 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %69 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %68, i32 0, i32 1
  %70 = load %struct.dlm_rcom*, %struct.dlm_rcom** %69, align 8
  store %struct.dlm_rcom* %70, %struct.dlm_rcom** %7, align 8
  %71 = load %struct.dlm_rcom*, %struct.dlm_rcom** %7, align 8
  %72 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @ESRCH, align 4
  %75 = sub nsw i32 0, %74
  %76 = icmp eq i32 %73, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %67
  %78 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @log_debug(%struct.dlm_ls* %78, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %79)
  %81 = load %struct.dlm_rcom*, %struct.dlm_rcom** %7, align 8
  %82 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %81, i32 0, i32 0
  store i32 0, i32* %82, align 8
  store i32 0, i32* %9, align 4
  br label %88

83:                                               ; preds = %67
  %84 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %85 = load %struct.dlm_rcom*, %struct.dlm_rcom** %7, align 8
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @check_rcom_config(%struct.dlm_ls* %84, %struct.dlm_rcom* %85, i32 %86)
  store i32 %87, i32* %9, align 4
  br label %88

88:                                               ; preds = %83, %77
  br label %89

89:                                               ; preds = %88, %66, %32, %16
  %90 = load i32, i32* %9, align 4
  ret i32 %90
}

declare dso_local i32 @dlm_our_nodeid(...) #1

declare dso_local i32 @dlm_recover_status(%struct.dlm_ls*) #1

declare dso_local i32 @create_rcom(%struct.dlm_ls*, i32, i32, i32, %struct.dlm_rcom**, %struct.dlm_mhandle**) #1

declare dso_local i32 @set_rcom_status(%struct.dlm_ls*, %struct.rcom_status*, i32) #1

declare dso_local i32 @allow_sync_reply(%struct.dlm_ls*, i32*) #1

declare dso_local i32 @memset(%struct.dlm_rcom*, i32, i32) #1

declare dso_local i32 @send_rcom(%struct.dlm_ls*, %struct.dlm_mhandle*, %struct.dlm_rcom*) #1

declare dso_local i32 @dlm_wait_function(%struct.dlm_ls*, i32*) #1

declare dso_local i32 @disallow_sync_reply(%struct.dlm_ls*) #1

declare dso_local i32 @log_debug(%struct.dlm_ls*, i8*, i32) #1

declare dso_local i32 @check_rcom_config(%struct.dlm_ls*, %struct.dlm_rcom*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
