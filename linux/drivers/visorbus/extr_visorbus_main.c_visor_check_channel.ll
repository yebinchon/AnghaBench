; ModuleID = '/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorbus_main.c_visor_check_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorbus_main.c_visor_check_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.channel_header = type { i64, i64, i64, i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [75 x i8] c"Channel mismatch on channel=%s(%pUL) field=type expected=%pUL actual=%pUL\0A\00", align 1
@.str.1 = private unnamed_addr constant [85 x i8] c"Channel mismatch on channel=%s(%pUL) field=size expected=0x%-8.8Lx actual=0x%-8.8Lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [87 x i8] c"Channel mismatch on channel=%s(%pUL) field=version expected=0x%-8.8lx actual=0x%-8.8x\0A\00", align 1
@.str.3 = private unnamed_addr constant [90 x i8] c"Channel mismatch on channel=%s(%pUL) field=signature expected=0x%-8.8Lx actual=0x%-8.8Lx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @visor_check_channel(%struct.channel_header* %0, %struct.device* %1, i32* %2, i8* %3, i64 %4, i64 %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.channel_header*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.channel_header* %0, %struct.channel_header** %9, align 8
  store %struct.device* %1, %struct.device** %10, align 8
  store i32* %2, i32** %11, align 8
  store i8* %3, i8** %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  %16 = load i32*, i32** %11, align 8
  %17 = call i32 @guid_is_null(i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %35, label %19

19:                                               ; preds = %7
  %20 = load %struct.channel_header*, %struct.channel_header** %9, align 8
  %21 = getelementptr inbounds %struct.channel_header, %struct.channel_header* %20, i32 0, i32 3
  %22 = load i32*, i32** %11, align 8
  %23 = call i32 @guid_equal(i32* %21, i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %19
  %26 = load %struct.device*, %struct.device** %10, align 8
  %27 = load i8*, i8** %12, align 8
  %28 = load i32*, i32** %11, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = ptrtoint i32* %29 to i64
  %31 = load %struct.channel_header*, %struct.channel_header** %9, align 8
  %32 = getelementptr inbounds %struct.channel_header, %struct.channel_header* %31, i32 0, i32 3
  %33 = call i32 @dev_err(%struct.device* %26, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i8* %27, i32* %28, i64 %30, i32* %32)
  store i32 0, i32* %8, align 4
  br label %96

34:                                               ; preds = %19
  br label %35

35:                                               ; preds = %34, %7
  %36 = load i64, i64* %13, align 8
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %38, label %55

38:                                               ; preds = %35
  %39 = load %struct.channel_header*, %struct.channel_header** %9, align 8
  %40 = getelementptr inbounds %struct.channel_header, %struct.channel_header* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %13, align 8
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %38
  %45 = load %struct.device*, %struct.device** %10, align 8
  %46 = load i8*, i8** %12, align 8
  %47 = load i32*, i32** %11, align 8
  %48 = load i64, i64* %13, align 8
  %49 = load %struct.channel_header*, %struct.channel_header** %9, align 8
  %50 = getelementptr inbounds %struct.channel_header, %struct.channel_header* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to i32*
  %53 = call i32 @dev_err(%struct.device* %45, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i64 0, i64 0), i8* %46, i32* %47, i64 %48, i32* %52)
  store i32 0, i32* %8, align 4
  br label %96

54:                                               ; preds = %38
  br label %55

55:                                               ; preds = %54, %35
  %56 = load i64, i64* %14, align 8
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %58, label %75

58:                                               ; preds = %55
  %59 = load %struct.channel_header*, %struct.channel_header** %9, align 8
  %60 = getelementptr inbounds %struct.channel_header, %struct.channel_header* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %14, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %74

64:                                               ; preds = %58
  %65 = load %struct.device*, %struct.device** %10, align 8
  %66 = load i8*, i8** %12, align 8
  %67 = load i32*, i32** %11, align 8
  %68 = load i64, i64* %14, align 8
  %69 = load %struct.channel_header*, %struct.channel_header** %9, align 8
  %70 = getelementptr inbounds %struct.channel_header, %struct.channel_header* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to i32*
  %73 = call i32 @dev_err(%struct.device* %65, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.2, i64 0, i64 0), i8* %66, i32* %67, i64 %68, i32* %72)
  store i32 0, i32* %8, align 4
  br label %96

74:                                               ; preds = %58
  br label %75

75:                                               ; preds = %74, %55
  %76 = load i64, i64* %15, align 8
  %77 = icmp sgt i64 %76, 0
  br i1 %77, label %78, label %95

78:                                               ; preds = %75
  %79 = load %struct.channel_header*, %struct.channel_header** %9, align 8
  %80 = getelementptr inbounds %struct.channel_header, %struct.channel_header* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %15, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %94

84:                                               ; preds = %78
  %85 = load %struct.device*, %struct.device** %10, align 8
  %86 = load i8*, i8** %12, align 8
  %87 = load i32*, i32** %11, align 8
  %88 = load i64, i64* %15, align 8
  %89 = load %struct.channel_header*, %struct.channel_header** %9, align 8
  %90 = getelementptr inbounds %struct.channel_header, %struct.channel_header* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = inttoptr i64 %91 to i32*
  %93 = call i32 @dev_err(%struct.device* %85, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.3, i64 0, i64 0), i8* %86, i32* %87, i64 %88, i32* %92)
  store i32 0, i32* %8, align 4
  br label %96

94:                                               ; preds = %78
  br label %95

95:                                               ; preds = %94, %75
  store i32 1, i32* %8, align 4
  br label %96

96:                                               ; preds = %95, %84, %64, %44, %25
  %97 = load i32, i32* %8, align 4
  ret i32 %97
}

declare dso_local i32 @guid_is_null(i32*) #1

declare dso_local i32 @guid_equal(i32*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i8*, i32*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
