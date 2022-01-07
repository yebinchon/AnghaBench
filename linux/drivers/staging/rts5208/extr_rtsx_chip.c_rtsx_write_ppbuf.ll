; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_chip.c_rtsx_write_ppbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_chip.c_rtsx_write_ppbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32 }

@STATUS_ERROR = common dso_local global i32 0, align 4
@PPBUF_BASE2 = common dso_local global i32 0, align 4
@WRITE_REG_CMD = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtsx_write_ppbuf(%struct.rtsx_chip* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtsx_chip*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @STATUS_ERROR, align 4
  store i32 %16, i32* %4, align 4
  br label %90

17:                                               ; preds = %3
  %18 = load i32*, i32** %6, align 8
  store i32* %18, i32** %12, align 8
  %19 = load i32, i32* @PPBUF_BASE2, align 4
  store i32 %19, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %52, %17
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %7, align 4
  %23 = sdiv i32 %22, 256
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %55

25:                                               ; preds = %20
  %26 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %27 = call i32 @rtsx_init_cmd(%struct.rtsx_chip* %26)
  store i32 0, i32* %10, align 4
  br label %28

28:                                               ; preds = %41, %25
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %29, 256
  br i1 %30, label %31, label %44

31:                                               ; preds = %28
  %32 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %33 = load i32, i32* @WRITE_REG_CMD, align 4
  %34 = load i32, i32* %11, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %11, align 4
  %36 = load i32*, i32** %12, align 8
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %32, i32 %33, i32 %34, i32 255, i32 %37)
  %39 = load i32*, i32** %12, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %12, align 8
  br label %41

41:                                               ; preds = %31
  %42 = load i32, i32* %10, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %10, align 4
  br label %28

44:                                               ; preds = %28
  %45 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %46 = call i32 @rtsx_send_cmd(%struct.rtsx_chip* %45, i32 0, i32 250)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %50, i32* %4, align 4
  br label %90

51:                                               ; preds = %44
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %9, align 4
  br label %20

55:                                               ; preds = %20
  %56 = load i32, i32* %7, align 4
  %57 = srem i32 %56, 256
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %88

59:                                               ; preds = %55
  %60 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %61 = call i32 @rtsx_init_cmd(%struct.rtsx_chip* %60)
  store i32 0, i32* %10, align 4
  br label %62

62:                                               ; preds = %77, %59
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %7, align 4
  %65 = srem i32 %64, 256
  %66 = icmp slt i32 %63, %65
  br i1 %66, label %67, label %80

67:                                               ; preds = %62
  %68 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %69 = load i32, i32* @WRITE_REG_CMD, align 4
  %70 = load i32, i32* %11, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %11, align 4
  %72 = load i32*, i32** %12, align 8
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %68, i32 %69, i32 %70, i32 255, i32 %73)
  %75 = load i32*, i32** %12, align 8
  %76 = getelementptr inbounds i32, i32* %75, i32 1
  store i32* %76, i32** %12, align 8
  br label %77

77:                                               ; preds = %67
  %78 = load i32, i32* %10, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %10, align 4
  br label %62

80:                                               ; preds = %62
  %81 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %82 = call i32 @rtsx_send_cmd(%struct.rtsx_chip* %81, i32 0, i32 250)
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %86, i32* %4, align 4
  br label %90

87:                                               ; preds = %80
  br label %88

88:                                               ; preds = %87, %55
  %89 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %88, %85, %49, %15
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @rtsx_init_cmd(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_add_cmd(%struct.rtsx_chip*, i32, i32, i32, i32) #1

declare dso_local i32 @rtsx_send_cmd(%struct.rtsx_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
