; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_chip.c_rtsx_read_ppbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_chip.c_rtsx_read_ppbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32 }

@STATUS_ERROR = common dso_local global i32 0, align 4
@PPBUF_BASE2 = common dso_local global i32 0, align 4
@READ_REG_CMD = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtsx_read_ppbuf(%struct.rtsx_chip* %0, i32* %1, i32 %2) #0 {
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
  br label %94

17:                                               ; preds = %3
  %18 = load i32*, i32** %6, align 8
  store i32* %18, i32** %12, align 8
  %19 = load i32, i32* @PPBUF_BASE2, align 4
  store i32 %19, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %54, %17
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %7, align 4
  %23 = sdiv i32 %22, 256
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %57

25:                                               ; preds = %20
  %26 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %27 = call i32 @rtsx_init_cmd(%struct.rtsx_chip* %26)
  store i32 0, i32* %10, align 4
  br label %28

28:                                               ; preds = %37, %25
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %29, 256
  br i1 %30, label %31, label %40

31:                                               ; preds = %28
  %32 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %33 = load i32, i32* @READ_REG_CMD, align 4
  %34 = load i32, i32* %11, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %11, align 4
  %36 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %32, i32 %33, i32 %34, i32 0, i32 0)
  br label %37

37:                                               ; preds = %31
  %38 = load i32, i32* %10, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %10, align 4
  br label %28

40:                                               ; preds = %28
  %41 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %42 = call i32 @rtsx_send_cmd(%struct.rtsx_chip* %41, i32 0, i32 250)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %46, i32* %4, align 4
  br label %94

47:                                               ; preds = %40
  %48 = load i32*, i32** %12, align 8
  %49 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %50 = call i32 @rtsx_get_cmd_data(%struct.rtsx_chip* %49)
  %51 = call i32 @memcpy(i32* %48, i32 %50, i32 256)
  %52 = load i32*, i32** %12, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 256
  store i32* %53, i32** %12, align 8
  br label %54

54:                                               ; preds = %47
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %20

57:                                               ; preds = %20
  %58 = load i32, i32* %7, align 4
  %59 = srem i32 %58, 256
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %86

61:                                               ; preds = %57
  %62 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %63 = call i32 @rtsx_init_cmd(%struct.rtsx_chip* %62)
  store i32 0, i32* %10, align 4
  br label %64

64:                                               ; preds = %75, %61
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %7, align 4
  %67 = srem i32 %66, 256
  %68 = icmp slt i32 %65, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %64
  %70 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %71 = load i32, i32* @READ_REG_CMD, align 4
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %11, align 4
  %74 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %70, i32 %71, i32 %72, i32 0, i32 0)
  br label %75

75:                                               ; preds = %69
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %10, align 4
  br label %64

78:                                               ; preds = %64
  %79 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %80 = call i32 @rtsx_send_cmd(%struct.rtsx_chip* %79, i32 0, i32 250)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %84, i32* %4, align 4
  br label %94

85:                                               ; preds = %78
  br label %86

86:                                               ; preds = %85, %57
  %87 = load i32*, i32** %12, align 8
  %88 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %89 = call i32 @rtsx_get_cmd_data(%struct.rtsx_chip* %88)
  %90 = load i32, i32* %7, align 4
  %91 = srem i32 %90, 256
  %92 = call i32 @memcpy(i32* %87, i32 %89, i32 %91)
  %93 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %86, %83, %45, %15
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32 @rtsx_init_cmd(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_add_cmd(%struct.rtsx_chip*, i32, i32, i32, i32) #1

declare dso_local i32 @rtsx_send_cmd(%struct.rtsx_chip*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @rtsx_get_cmd_data(%struct.rtsx_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
