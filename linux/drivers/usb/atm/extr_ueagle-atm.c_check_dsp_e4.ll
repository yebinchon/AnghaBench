; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/atm/extr_ueagle-atm.c_check_dsp_e4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/atm/extr_ueagle-atm.c_check_dsp_e4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l1_code = type { i64*, i64*, %struct.block_index*, i32 }
%struct.block_index = type { i32, i32, i32, i64 }

@.str = private unnamed_addr constant [16 x i8] c"STRATIPHY ANEXA\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"STRATIPHY ANEXB\00", align 1
@E4_MAX_PAGE_NUMBER = common dso_local global i32 0, align 4
@E4_NO_SWAPPAGE_HEADERS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i32)* @check_dsp_e4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_dsp_e4(i64* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.l1_code*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.block_index*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i64*, i64** %4, align 8
  %13 = bitcast i64* %12 to %struct.l1_code*
  store %struct.l1_code* %13, %struct.l1_code** %7, align 8
  %14 = load %struct.l1_code*, %struct.l1_code** %7, align 8
  %15 = getelementptr inbounds %struct.l1_code, %struct.l1_code* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = load i64*, i64** %4, align 8
  %18 = ptrtoint i64* %16 to i64
  %19 = ptrtoint i64* %17 to i64
  %20 = sub i64 %18, %19
  %21 = sdiv exact i64 %20, 8
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %126

27:                                               ; preds = %2
  %28 = load %struct.l1_code*, %struct.l1_code** %7, align 8
  %29 = getelementptr inbounds %struct.l1_code, %struct.l1_code* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @strcmp(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load %struct.l1_code*, %struct.l1_code** %7, align 8
  %35 = getelementptr inbounds %struct.l1_code, %struct.l1_code* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @strcmp(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i32 1, i32* %3, align 4
  br label %126

40:                                               ; preds = %33, %27
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %117, %40
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @E4_MAX_PAGE_NUMBER, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %120

45:                                               ; preds = %41
  %46 = load %struct.l1_code*, %struct.l1_code** %7, align 8
  %47 = getelementptr inbounds %struct.l1_code, %struct.l1_code* %46, i32 0, i32 1
  %48 = load i64*, i64** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %10, align 8
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* @E4_NO_SWAPPAGE_HEADERS, align 8
  %55 = icmp sge i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %45
  br label %117

57:                                               ; preds = %45
  br label %58

58:                                               ; preds = %111, %57
  %59 = load i64, i64* %10, align 8
  %60 = load i64, i64* @E4_NO_SWAPPAGE_HEADERS, align 8
  %61 = icmp sge i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  store i32 1, i32* %3, align 4
  br label %126

63:                                               ; preds = %58
  %64 = load %struct.l1_code*, %struct.l1_code** %7, align 8
  %65 = getelementptr inbounds %struct.l1_code, %struct.l1_code* %64, i32 0, i32 2
  %66 = load %struct.block_index*, %struct.block_index** %65, align 8
  %67 = load i64, i64* %10, align 8
  %68 = add nsw i64 %67, 1
  store i64 %68, i64* %10, align 8
  %69 = getelementptr inbounds %struct.block_index, %struct.block_index* %66, i64 %67
  store %struct.block_index* %69, %struct.block_index** %9, align 8
  %70 = load %struct.block_index*, %struct.block_index** %9, align 8
  %71 = getelementptr inbounds %struct.block_index, %struct.block_index* %70, i64 1
  %72 = bitcast %struct.block_index* %71 to i64*
  %73 = load i64*, i64** %4, align 8
  %74 = ptrtoint i64* %72 to i64
  %75 = ptrtoint i64* %73 to i64
  %76 = sub i64 %74, %75
  %77 = sdiv exact i64 %76, 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = icmp sge i64 %77, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %63
  store i32 1, i32* %3, align 4
  br label %126

82:                                               ; preds = %63
  %83 = load %struct.block_index*, %struct.block_index** %9, align 8
  %84 = getelementptr inbounds %struct.block_index, %struct.block_index* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @le16_to_cpu(i32 %85)
  %87 = load i32, i32* %6, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  store i32 1, i32* %3, align 4
  br label %126

90:                                               ; preds = %82
  %91 = load %struct.block_index*, %struct.block_index** %9, align 8
  %92 = getelementptr inbounds %struct.block_index, %struct.block_index* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @E4_PAGE_BYTES(i32 %93)
  store i32 %94, i32* %11, align 4
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* %8, align 4
  %97 = add i32 %96, %95
  store i32 %97, i32* %8, align 4
  %98 = load %struct.block_index*, %struct.block_index** %9, align 8
  %99 = getelementptr inbounds %struct.block_index, %struct.block_index* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i64 @le32_to_cpu(i32 %100)
  %102 = load i32, i32* %11, align 4
  %103 = zext i32 %102 to i64
  %104 = add nsw i64 %103, %101
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %11, align 4
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* %5, align 4
  %108 = icmp ugt i32 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %90
  store i32 1, i32* %3, align 4
  br label %126

110:                                              ; preds = %90
  br label %111

111:                                              ; preds = %110
  %112 = load %struct.block_index*, %struct.block_index** %9, align 8
  %113 = getelementptr inbounds %struct.block_index, %struct.block_index* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %58, label %116

116:                                              ; preds = %111
  br label %117

117:                                              ; preds = %116, %56
  %118 = load i32, i32* %6, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %6, align 4
  br label %41

120:                                              ; preds = %41
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* %5, align 4
  %123 = icmp eq i32 %121, %122
  %124 = zext i1 %123 to i64
  %125 = select i1 %123, i32 0, i32 1
  store i32 %125, i32* %3, align 4
  br label %126

126:                                              ; preds = %120, %109, %89, %81, %62, %39, %26
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @E4_PAGE_BYTES(i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
