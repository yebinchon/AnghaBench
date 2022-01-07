; ModuleID = '/home/carl/AnghaBench/linux/drivers/virt/vboxguest/extr_vboxguest_utils.c_vbg_hgcm_call.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virt/vboxguest/extr_vboxguest_utils.c_vbg_hgcm_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vbg_dev = type { i32 }
%struct.vmmdev_hgcm_function_parameter = type { i32 }
%struct.vmmdev_hgcm_call = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@VMMDEVREQ_HGCM_CALL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vbg_hgcm_call(%struct.vbg_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.vmmdev_hgcm_function_parameter* %5, i32 %6, i32* %7) #0 {
  %9 = alloca %struct.vbg_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.vmmdev_hgcm_function_parameter*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca %struct.vmmdev_hgcm_call*, align 8
  %18 = alloca i8**, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.vbg_dev* %0, %struct.vbg_dev** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.vmmdev_hgcm_function_parameter* %5, %struct.vmmdev_hgcm_function_parameter** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32* %7, i32** %16, align 8
  store i8** null, i8*** %18, align 8
  %23 = load i32, i32* %15, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 4
  %26 = add i64 4, %25
  store i64 %26, i64* %20, align 8
  %27 = load %struct.vmmdev_hgcm_function_parameter*, %struct.vmmdev_hgcm_function_parameter** %14, align 8
  %28 = load i32, i32* %15, align 4
  %29 = call i32 @hgcm_call_preprocess(%struct.vmmdev_hgcm_function_parameter* %27, i32 %28, i8*** %18, i64* %20)
  store i32 %29, i32* %22, align 4
  %30 = load i32, i32* %22, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %8
  br label %76

33:                                               ; preds = %8
  %34 = load i64, i64* %20, align 8
  %35 = load i32, i32* @VMMDEVREQ_HGCM_CALL, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call %struct.vmmdev_hgcm_call* @vbg_req_alloc(i64 %34, i32 %35, i32 %36)
  store %struct.vmmdev_hgcm_call* %37, %struct.vmmdev_hgcm_call** %17, align 8
  %38 = load %struct.vmmdev_hgcm_call*, %struct.vmmdev_hgcm_call** %17, align 8
  %39 = icmp ne %struct.vmmdev_hgcm_call* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %33
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %22, align 4
  br label %76

43:                                               ; preds = %33
  %44 = load %struct.vmmdev_hgcm_call*, %struct.vmmdev_hgcm_call** %17, align 8
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load %struct.vmmdev_hgcm_function_parameter*, %struct.vmmdev_hgcm_function_parameter** %14, align 8
  %48 = load i32, i32* %15, align 4
  %49 = load i8**, i8*** %18, align 8
  %50 = call i32 @hgcm_call_init_call(%struct.vmmdev_hgcm_call* %44, i32 %45, i32 %46, %struct.vmmdev_hgcm_function_parameter* %47, i32 %48, i8** %49)
  %51 = load %struct.vbg_dev*, %struct.vbg_dev** %9, align 8
  %52 = load %struct.vmmdev_hgcm_call*, %struct.vmmdev_hgcm_call** %17, align 8
  %53 = load i32, i32* %13, align 4
  %54 = call i32 @vbg_hgcm_do_call(%struct.vbg_dev* %51, %struct.vmmdev_hgcm_call* %52, i32 %53, i32* %19)
  store i32 %54, i32* %22, align 4
  %55 = load i32, i32* %22, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %43
  %58 = load %struct.vmmdev_hgcm_call*, %struct.vmmdev_hgcm_call** %17, align 8
  %59 = getelementptr inbounds %struct.vmmdev_hgcm_call, %struct.vmmdev_hgcm_call* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %16, align 8
  store i32 %61, i32* %62, align 4
  %63 = load %struct.vmmdev_hgcm_call*, %struct.vmmdev_hgcm_call** %17, align 8
  %64 = load %struct.vmmdev_hgcm_function_parameter*, %struct.vmmdev_hgcm_function_parameter** %14, align 8
  %65 = load i32, i32* %15, align 4
  %66 = load i8**, i8*** %18, align 8
  %67 = call i32 @hgcm_call_copy_back_result(%struct.vmmdev_hgcm_call* %63, %struct.vmmdev_hgcm_function_parameter* %64, i32 %65, i8** %66)
  store i32 %67, i32* %22, align 4
  br label %68

68:                                               ; preds = %57, %43
  %69 = load i32, i32* %19, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %68
  %72 = load %struct.vmmdev_hgcm_call*, %struct.vmmdev_hgcm_call** %17, align 8
  %73 = load i64, i64* %20, align 8
  %74 = call i32 @vbg_req_free(%struct.vmmdev_hgcm_call* %72, i64 %73)
  br label %75

75:                                               ; preds = %71, %68
  br label %76

76:                                               ; preds = %75, %40, %32
  %77 = load i8**, i8*** %18, align 8
  %78 = icmp ne i8** %77, null
  br i1 %78, label %79, label %97

79:                                               ; preds = %76
  store i32 0, i32* %21, align 4
  br label %80

80:                                               ; preds = %91, %79
  %81 = load i32, i32* %21, align 4
  %82 = load i32, i32* %15, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %94

84:                                               ; preds = %80
  %85 = load i8**, i8*** %18, align 8
  %86 = load i32, i32* %21, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8*, i8** %85, i64 %87
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @kvfree(i8* %89)
  br label %91

91:                                               ; preds = %84
  %92 = load i32, i32* %21, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %21, align 4
  br label %80

94:                                               ; preds = %80
  %95 = load i8**, i8*** %18, align 8
  %96 = call i32 @kfree(i8** %95)
  br label %97

97:                                               ; preds = %94, %76
  %98 = load i32, i32* %22, align 4
  ret i32 %98
}

declare dso_local i32 @hgcm_call_preprocess(%struct.vmmdev_hgcm_function_parameter*, i32, i8***, i64*) #1

declare dso_local %struct.vmmdev_hgcm_call* @vbg_req_alloc(i64, i32, i32) #1

declare dso_local i32 @hgcm_call_init_call(%struct.vmmdev_hgcm_call*, i32, i32, %struct.vmmdev_hgcm_function_parameter*, i32, i8**) #1

declare dso_local i32 @vbg_hgcm_do_call(%struct.vbg_dev*, %struct.vmmdev_hgcm_call*, i32, i32*) #1

declare dso_local i32 @hgcm_call_copy_back_result(%struct.vmmdev_hgcm_call*, %struct.vmmdev_hgcm_function_parameter*, i32, i8**) #1

declare dso_local i32 @vbg_req_free(%struct.vmmdev_hgcm_call*, i64) #1

declare dso_local i32 @kvfree(i8*) #1

declare dso_local i32 @kfree(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
