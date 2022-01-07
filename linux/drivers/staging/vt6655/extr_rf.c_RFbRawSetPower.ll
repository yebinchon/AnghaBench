; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_rf.c_RFbRawSetPower.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_rf.c_RFbRawSetPower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_private = type { i8, i32 }

@dwAL2230PowerTable = common dso_local global i64* null, align 8
@RATE_11M = common dso_local global i32 0, align 4
@BY_AL2230_REG_LEN = common dso_local global i32 0, align 4
@IFREGCTL_REGW = common dso_local global i32 0, align 4
@BY_AL7230_REG_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RFbRawSetPower(%struct.vnt_private* %0, i8 zeroext %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vnt_private*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.vnt_private* %0, %struct.vnt_private** %5, align 8
  store i8 %1, i8* %6, align 1
  store i32 %2, i32* %7, align 4
  store i32 1, i32* %8, align 4
  store i64 0, i64* %9, align 8
  %10 = load i8, i8* %6, align 1
  %11 = zext i8 %10 to i32
  %12 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %13 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %12, i32 0, i32 0
  %14 = load i8, i8* %13, align 4
  %15 = zext i8 %14 to i32
  %16 = icmp sge i32 %11, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %133

18:                                               ; preds = %3
  %19 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %20 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %130 [
    i32 130, label %22
    i32 128, label %58
    i32 129, label %114
  ]

22:                                               ; preds = %18
  %23 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %24 = load i64*, i64** @dwAL2230PowerTable, align 8
  %25 = load i8, i8* %6, align 1
  %26 = zext i8 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @IFRFbWriteEmbedded(%struct.vnt_private* %23, i64 %28)
  %30 = load i32, i32* %8, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @RATE_11M, align 4
  %34 = icmp ule i32 %32, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %22
  %36 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %37 = load i32, i32* @BY_AL2230_REG_LEN, align 4
  %38 = shl i32 %37, 3
  %39 = add nsw i32 111616, %38
  %40 = load i32, i32* @IFREGCTL_REGW, align 4
  %41 = add nsw i32 %39, %40
  %42 = sext i32 %41 to i64
  %43 = call i32 @IFRFbWriteEmbedded(%struct.vnt_private* %36, i64 %42)
  %44 = load i32, i32* %8, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %8, align 4
  br label %57

46:                                               ; preds = %22
  %47 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %48 = load i32, i32* @BY_AL2230_REG_LEN, align 4
  %49 = shl i32 %48, 3
  %50 = add nsw i32 369664, %49
  %51 = load i32, i32* @IFREGCTL_REGW, align 4
  %52 = add nsw i32 %50, %51
  %53 = sext i32 %52 to i64
  %54 = call i32 @IFRFbWriteEmbedded(%struct.vnt_private* %47, i64 %53)
  %55 = load i32, i32* %8, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %46, %35
  br label %131

58:                                               ; preds = %18
  %59 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %60 = load i64*, i64** @dwAL2230PowerTable, align 8
  %61 = load i8, i8* %6, align 1
  %62 = zext i8 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @IFRFbWriteEmbedded(%struct.vnt_private* %59, i64 %64)
  %66 = load i32, i32* %8, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @RATE_11M, align 4
  %70 = icmp ule i32 %68, %69
  br i1 %70, label %71, label %92

71:                                               ; preds = %58
  %72 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %73 = load i32, i32* @BY_AL2230_REG_LEN, align 4
  %74 = shl i32 %73, 3
  %75 = add nsw i32 67900416, %74
  %76 = load i32, i32* @IFREGCTL_REGW, align 4
  %77 = add nsw i32 %75, %76
  %78 = sext i32 %77 to i64
  %79 = call i32 @IFRFbWriteEmbedded(%struct.vnt_private* %72, i64 %78)
  %80 = load i32, i32* %8, align 4
  %81 = and i32 %80, %79
  store i32 %81, i32* %8, align 4
  %82 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %83 = load i32, i32* @BY_AL2230_REG_LEN, align 4
  %84 = shl i32 %83, 3
  %85 = add nsw i32 2726656, %84
  %86 = load i32, i32* @IFREGCTL_REGW, align 4
  %87 = add nsw i32 %85, %86
  %88 = sext i32 %87 to i64
  %89 = call i32 @IFRFbWriteEmbedded(%struct.vnt_private* %82, i64 %88)
  %90 = load i32, i32* %8, align 4
  %91 = and i32 %90, %89
  store i32 %91, i32* %8, align 4
  br label %113

92:                                               ; preds = %58
  %93 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %94 = load i32, i32* @BY_AL2230_REG_LEN, align 4
  %95 = shl i32 %94, 3
  %96 = add nsw i32 369664, %95
  %97 = load i32, i32* @IFREGCTL_REGW, align 4
  %98 = add nsw i32 %96, %97
  %99 = sext i32 %98 to i64
  %100 = call i32 @IFRFbWriteEmbedded(%struct.vnt_private* %93, i64 %99)
  %101 = load i32, i32* %8, align 4
  %102 = and i32 %101, %100
  store i32 %102, i32* %8, align 4
  %103 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %104 = load i32, i32* @BY_AL2230_REG_LEN, align 4
  %105 = shl i32 %104, 3
  %106 = add nsw i32 629504, %105
  %107 = load i32, i32* @IFREGCTL_REGW, align 4
  %108 = add nsw i32 %106, %107
  %109 = sext i32 %108 to i64
  %110 = call i32 @IFRFbWriteEmbedded(%struct.vnt_private* %103, i64 %109)
  %111 = load i32, i32* %8, align 4
  %112 = and i32 %111, %110
  store i32 %112, i32* %8, align 4
  br label %113

113:                                              ; preds = %92, %71
  br label %131

114:                                              ; preds = %18
  %115 = load i8, i8* %6, align 1
  %116 = zext i8 %115 to i32
  %117 = shl i32 %116, 12
  %118 = or i32 135006976, %117
  %119 = load i32, i32* @BY_AL7230_REG_LEN, align 4
  %120 = shl i32 %119, 3
  %121 = or i32 %118, %120
  %122 = load i32, i32* @IFREGCTL_REGW, align 4
  %123 = or i32 %121, %122
  %124 = sext i32 %123 to i64
  store i64 %124, i64* %9, align 8
  %125 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %126 = load i64, i64* %9, align 8
  %127 = call i32 @IFRFbWriteEmbedded(%struct.vnt_private* %125, i64 %126)
  %128 = load i32, i32* %8, align 4
  %129 = and i32 %128, %127
  store i32 %129, i32* %8, align 4
  br label %131

130:                                              ; preds = %18
  br label %131

131:                                              ; preds = %130, %114, %113, %57
  %132 = load i32, i32* %8, align 4
  store i32 %132, i32* %4, align 4
  br label %133

133:                                              ; preds = %131, %17
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local i32 @IFRFbWriteEmbedded(%struct.vnt_private*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
