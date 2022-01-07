; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/intel_speed_select_if/extr_isst_if_common.c_isst_if_msr_cmd_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/intel_speed_select_if/extr_isst_if_common.c_isst_if_msr_cmd_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isst_if_msr_cmd = type { i64, i32, i32, i64 }

@EINVAL = common dso_local global i64 0, align 8
@nr_cpu_ids = common dso_local global i64 0, align 8
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, i32)* @isst_if_msr_cmd_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @isst_if_msr_cmd_req(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.isst_if_msr_cmd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = bitcast i32* %11 to %struct.isst_if_msr_cmd*
  store %struct.isst_if_msr_cmd* %12, %struct.isst_if_msr_cmd** %8, align 8
  %13 = load %struct.isst_if_msr_cmd*, %struct.isst_if_msr_cmd** %8, align 8
  %14 = getelementptr inbounds %struct.isst_if_msr_cmd, %struct.isst_if_msr_cmd* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @match_punit_msr_white_list(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i64, i64* @EINVAL, align 8
  %20 = sub nsw i64 0, %19
  store i64 %20, i64* %4, align 8
  br label %90

21:                                               ; preds = %3
  %22 = load %struct.isst_if_msr_cmd*, %struct.isst_if_msr_cmd** %8, align 8
  %23 = getelementptr inbounds %struct.isst_if_msr_cmd, %struct.isst_if_msr_cmd* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @nr_cpu_ids, align 8
  %26 = icmp sge i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i64, i64* @EINVAL, align 8
  %29 = sub nsw i64 0, %28
  store i64 %29, i64* %4, align 8
  br label %90

30:                                               ; preds = %21
  %31 = load %struct.isst_if_msr_cmd*, %struct.isst_if_msr_cmd** %8, align 8
  %32 = getelementptr inbounds %struct.isst_if_msr_cmd, %struct.isst_if_msr_cmd* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %71

35:                                               ; preds = %30
  %36 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %37 = call i32 @capable(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = load i64, i64* @EPERM, align 8
  %41 = sub nsw i64 0, %40
  store i64 %41, i64* %4, align 8
  br label %90

42:                                               ; preds = %35
  %43 = load %struct.isst_if_msr_cmd*, %struct.isst_if_msr_cmd** %8, align 8
  %44 = getelementptr inbounds %struct.isst_if_msr_cmd, %struct.isst_if_msr_cmd* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.isst_if_msr_cmd*, %struct.isst_if_msr_cmd** %8, align 8
  %47 = getelementptr inbounds %struct.isst_if_msr_cmd, %struct.isst_if_msr_cmd* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.isst_if_msr_cmd*, %struct.isst_if_msr_cmd** %8, align 8
  %50 = getelementptr inbounds %struct.isst_if_msr_cmd, %struct.isst_if_msr_cmd* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @wrmsrl_safe_on_cpu(i64 %45, i32 %48, i32 %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32*, i32** %6, align 8
  store i32 1, i32* %53, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %70, label %56

56:                                               ; preds = %42
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %70, label %59

59:                                               ; preds = %56
  %60 = load %struct.isst_if_msr_cmd*, %struct.isst_if_msr_cmd** %8, align 8
  %61 = getelementptr inbounds %struct.isst_if_msr_cmd, %struct.isst_if_msr_cmd* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.isst_if_msr_cmd*, %struct.isst_if_msr_cmd** %8, align 8
  %64 = getelementptr inbounds %struct.isst_if_msr_cmd, %struct.isst_if_msr_cmd* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.isst_if_msr_cmd*, %struct.isst_if_msr_cmd** %8, align 8
  %67 = getelementptr inbounds %struct.isst_if_msr_cmd, %struct.isst_if_msr_cmd* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @isst_store_cmd(i32 0, i32 %62, i64 %65, i32 0, i32 0, i32 %68)
  store i32 %69, i32* %9, align 4
  br label %70

70:                                               ; preds = %59, %56, %42
  br label %87

71:                                               ; preds = %30
  %72 = load %struct.isst_if_msr_cmd*, %struct.isst_if_msr_cmd** %8, align 8
  %73 = getelementptr inbounds %struct.isst_if_msr_cmd, %struct.isst_if_msr_cmd* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.isst_if_msr_cmd*, %struct.isst_if_msr_cmd** %8, align 8
  %76 = getelementptr inbounds %struct.isst_if_msr_cmd, %struct.isst_if_msr_cmd* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @rdmsrl_safe_on_cpu(i64 %74, i32 %77, i32* %10)
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %71
  %82 = load i32, i32* %10, align 4
  %83 = load %struct.isst_if_msr_cmd*, %struct.isst_if_msr_cmd** %8, align 8
  %84 = getelementptr inbounds %struct.isst_if_msr_cmd, %struct.isst_if_msr_cmd* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 8
  %85 = load i32*, i32** %6, align 8
  store i32 0, i32* %85, align 4
  br label %86

86:                                               ; preds = %81, %71
  br label %87

87:                                               ; preds = %86, %70
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  store i64 %89, i64* %4, align 8
  br label %90

90:                                               ; preds = %87, %39, %27, %18
  %91 = load i64, i64* %4, align 8
  ret i64 %91
}

declare dso_local i32 @match_punit_msr_white_list(i32) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @wrmsrl_safe_on_cpu(i64, i32, i32) #1

declare dso_local i32 @isst_store_cmd(i32, i32, i64, i32, i32, i32) #1

declare dso_local i32 @rdmsrl_safe_on_cpu(i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
