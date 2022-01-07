; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_efuse.c_r8712_efuse_map_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_efuse.c_r8712_efuse_map_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { i32 }

@PGPKT_DATA_SIZE = common dso_local global i32 0, align 4
@EFUSE_MAP_MAX_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r8712_efuse_map_read(%struct._adapter* %0, i64 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct._adapter*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct._adapter* %0, %struct._adapter** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 1, i32* %11, align 4
  %17 = load i32, i32* @PGPKT_DATA_SIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %12, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %13, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* %8, align 8
  %23 = add nsw i64 %21, %22
  %24 = load i64, i64* @EFUSE_MAP_MAX_SIZE, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %98

27:                                               ; preds = %4
  %28 = load %struct._adapter*, %struct._adapter** %6, align 8
  %29 = call i64 @efuse_is_empty(%struct._adapter* %28, i32* %10)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %50

31:                                               ; preds = %27
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %31
  store i32 0, i32* %14, align 4
  br label %35

35:                                               ; preds = %45, %34
  %36 = load i32, i32* %14, align 4
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* %8, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %35
  %41 = load i32*, i32** %9, align 8
  %42 = load i32, i32* %14, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  store i32 255, i32* %44, align 4
  br label %45

45:                                               ; preds = %40
  %46 = load i32, i32* %14, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %14, align 4
  br label %35

48:                                               ; preds = %35
  %49 = load i32, i32* %11, align 4
  store i32 %49, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %98

50:                                               ; preds = %31, %27
  %51 = load i64, i64* %7, align 8
  %52 = ashr i64 %51, 3
  %53 = and i64 %52, 15
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %10, align 4
  %55 = load %struct._adapter*, %struct._adapter** %6, align 8
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @r8712_efuse_pg_packet_read(%struct._adapter* %55, i32 %56, i32* %20)
  store i32 %57, i32* %11, align 4
  %58 = load i64, i64* %7, align 8
  %59 = and i64 %58, 7
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %61

61:                                               ; preds = %95, %50
  br label %62

62:                                               ; preds = %83, %61
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* @PGPKT_DATA_SIZE, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %86

66:                                               ; preds = %62
  %67 = load i32, i32* %14, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %20, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %9, align 8
  %72 = load i32, i32* %15, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %15, align 4
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i32, i32* %71, i64 %74
  store i32 %70, i32* %75, align 4
  %76 = load i32, i32* %15, align 4
  %77 = sext i32 %76 to i64
  %78 = load i64, i64* %8, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %66
  %81 = load i32, i32* %11, align 4
  store i32 %81, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %98

82:                                               ; preds = %66
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %14, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %14, align 4
  br label %62

86:                                               ; preds = %62
  %87 = load i32, i32* %10, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %10, align 4
  %89 = load %struct._adapter*, %struct._adapter** %6, align 8
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @r8712_efuse_pg_packet_read(%struct._adapter* %89, i32 %90, i32* %20)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %86
  store i32 0, i32* %11, align 4
  br label %94

94:                                               ; preds = %93, %86
  store i32 0, i32* %14, align 4
  br label %95

95:                                               ; preds = %94
  br i1 true, label %61, label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %11, align 4
  store i32 %97, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %98

98:                                               ; preds = %96, %80, %48, %26
  %99 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %99)
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @efuse_is_empty(%struct._adapter*, i32*) #2

declare dso_local i32 @r8712_efuse_pg_packet_read(%struct._adapter*, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
