; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init.c_SiS_GetSysFlags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init.c_SiS_GetSysFlags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i32, i32, i64, i32, i32 }

@SIS_330 = common dso_local global i64 0, align 8
@SIS_661 = common dso_local global i64 0, align 8
@SIS_650 = common dso_local global i64 0, align 8
@SF_IsM650 = common dso_local global i32 0, align 4
@SF_Is651 = common dso_local global i32 0, align 4
@SF_IsM652 = common dso_local global i32 0, align 4
@SF_IsM653 = common dso_local global i32 0, align 4
@SF_Is652 = common dso_local global i32 0, align 4
@SIS_760 = common dso_local global i64 0, align 8
@SIS_761 = common dso_local global i64 0, align 8
@SF_760LFB = common dso_local global i32 0, align 4
@SF_760UMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.SiS_Private*)* @SiS_GetSysFlags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SiS_GetSysFlags(%struct.SiS_Private* %0) #0 {
  %2 = alloca %struct.SiS_Private*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  store %struct.SiS_Private* %0, %struct.SiS_Private** %2, align 8
  %6 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %7 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %6, i32 0, i32 0
  store i32 0, i32* %7, align 8
  %8 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %9 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %8, i32 0, i32 1
  store i32 99, i32* %9, align 4
  %10 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %11 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SIS_330, align 8
  %14 = icmp sge i64 %12, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %1
  %16 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %17 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %16, i32 0, i32 1
  store i32 83, i32* %17, align 4
  %18 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %19 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SIS_661, align 8
  %22 = icmp sge i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %15
  %24 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %25 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  br label %26

26:                                               ; preds = %23, %15
  br label %27

27:                                               ; preds = %26, %1
  %28 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %29 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %28, i32 0, i32 3
  store i32 0, i32* %29, align 8
  %30 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %31 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SIS_650, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %129

35:                                               ; preds = %27
  %36 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %37 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @SiS_GetReg(i32 %38, i32 95)
  %40 = and i32 %39, 240
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* %3, align 1
  %42 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %43 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @SiS_SetRegAND(i32 %44, i32 92, i32 7)
  %46 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %47 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @SiS_GetReg(i32 %48, i32 92)
  %50 = and i32 %49, 248
  %51 = trunc i32 %50 to i8
  store i8 %51, i8* %4, align 1
  %52 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %53 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @SiS_SetRegOR(i32 %54, i32 92, i32 248)
  %56 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %57 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @SiS_GetReg(i32 %58, i32 92)
  %60 = and i32 %59, 248
  %61 = trunc i32 %60 to i8
  store i8 %61, i8* %5, align 1
  %62 = load i8, i8* %4, align 1
  %63 = icmp ne i8 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %35
  %65 = load i8, i8* %5, align 1
  %66 = zext i8 %65 to i32
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %84

68:                                               ; preds = %64, %35
  %69 = load i8, i8* %3, align 1
  %70 = zext i8 %69 to i32
  switch i32 %70, label %83 [
    i32 128, label %71
    i32 144, label %71
    i32 192, label %71
    i32 160, label %77
    i32 176, label %77
    i32 224, label %77
  ]

71:                                               ; preds = %68, %68, %68
  %72 = load i32, i32* @SF_IsM650, align 4
  %73 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %74 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 8
  br label %83

77:                                               ; preds = %68, %68, %68
  %78 = load i32, i32* @SF_Is651, align 4
  %79 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %80 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 8
  br label %83

83:                                               ; preds = %68, %77, %71
  br label %128

84:                                               ; preds = %64
  %85 = load i8, i8* %3, align 1
  %86 = zext i8 %85 to i32
  switch i32 %86, label %121 [
    i32 144, label %87
    i32 176, label %115
  ]

87:                                               ; preds = %84
  %88 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %89 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @SiS_GetReg(i32 %90, i32 92)
  %92 = and i32 %91, 248
  %93 = trunc i32 %92 to i8
  store i8 %93, i8* %4, align 1
  %94 = load i8, i8* %4, align 1
  %95 = zext i8 %94 to i32
  switch i32 %95, label %108 [
    i32 0, label %96
    i32 64, label %102
  ]

96:                                               ; preds = %87
  %97 = load i32, i32* @SF_IsM652, align 4
  %98 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %99 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 8
  br label %114

102:                                              ; preds = %87
  %103 = load i32, i32* @SF_IsM653, align 4
  %104 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %105 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 8
  br label %114

108:                                              ; preds = %87
  %109 = load i32, i32* @SF_IsM650, align 4
  %110 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %111 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 8
  br label %114

114:                                              ; preds = %108, %102, %96
  br label %127

115:                                              ; preds = %84
  %116 = load i32, i32* @SF_Is652, align 4
  %117 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %118 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = or i32 %119, %116
  store i32 %120, i32* %118, align 8
  br label %127

121:                                              ; preds = %84
  %122 = load i32, i32* @SF_IsM650, align 4
  %123 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %124 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 8
  br label %127

127:                                              ; preds = %121, %115, %114
  br label %128

128:                                              ; preds = %127, %83
  br label %129

129:                                              ; preds = %128, %27
  %130 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %131 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @SIS_760, align 8
  %134 = icmp sge i64 %132, %133
  br i1 %134, label %135, label %168

135:                                              ; preds = %129
  %136 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %137 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @SIS_761, align 8
  %140 = icmp sle i64 %138, %139
  br i1 %140, label %141, label %168

141:                                              ; preds = %135
  %142 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %143 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @SiS_GetReg(i32 %144, i32 120)
  %146 = and i32 %145, 48
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %141
  %149 = load i32, i32* @SF_760LFB, align 4
  %150 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %151 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 8
  %153 = or i32 %152, %149
  store i32 %153, i32* %151, align 8
  br label %154

154:                                              ; preds = %148, %141
  %155 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %156 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @SiS_GetReg(i32 %157, i32 121)
  %159 = and i32 %158, 240
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %154
  %162 = load i32, i32* @SF_760UMA, align 4
  %163 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %164 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 8
  %166 = or i32 %165, %162
  store i32 %166, i32* %164, align 8
  br label %167

167:                                              ; preds = %161, %154
  br label %168

168:                                              ; preds = %167, %135, %129
  ret void
}

declare dso_local i32 @SiS_GetReg(i32, i32) #1

declare dso_local i32 @SiS_SetRegAND(i32, i32, i32) #1

declare dso_local i32 @SiS_SetRegOR(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
