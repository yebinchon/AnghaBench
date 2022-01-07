; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_nal-h264.c_nal_h264_rbsp_pps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_nal-h264.c_nal_h264_rbsp_pps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbsp = type { i32 }
%struct.nal_h264_pps = type { i64, i64, i64, i64, i64*, i64*, i64*, i64, i64, i64, i64, i32, i64, i64, i64, i64, i64, i32, i32, i32, i32, i64, i32*, i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rbsp*, %struct.nal_h264_pps*)* @nal_h264_rbsp_pps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nal_h264_rbsp_pps(%struct.rbsp* %0, %struct.nal_h264_pps* %1) #0 {
  %3 = alloca %struct.rbsp*, align 8
  %4 = alloca %struct.nal_h264_pps*, align 8
  %5 = alloca i32, align 4
  store %struct.rbsp* %0, %struct.rbsp** %3, align 8
  store %struct.nal_h264_pps* %1, %struct.nal_h264_pps** %4, align 8
  %6 = load %struct.rbsp*, %struct.rbsp** %3, align 8
  %7 = load %struct.nal_h264_pps*, %struct.nal_h264_pps** %4, align 8
  %8 = getelementptr inbounds %struct.nal_h264_pps, %struct.nal_h264_pps* %7, i32 0, i32 0
  %9 = call i32 @rbsp_uev(%struct.rbsp* %6, i64* %8)
  %10 = load %struct.rbsp*, %struct.rbsp** %3, align 8
  %11 = load %struct.nal_h264_pps*, %struct.nal_h264_pps** %4, align 8
  %12 = getelementptr inbounds %struct.nal_h264_pps, %struct.nal_h264_pps* %11, i32 0, i32 1
  %13 = call i32 @rbsp_uev(%struct.rbsp* %10, i64* %12)
  %14 = load %struct.rbsp*, %struct.rbsp** %3, align 8
  %15 = load %struct.nal_h264_pps*, %struct.nal_h264_pps** %4, align 8
  %16 = getelementptr inbounds %struct.nal_h264_pps, %struct.nal_h264_pps* %15, i32 0, i32 25
  %17 = call i32 @rbsp_bit(%struct.rbsp* %14, i64* %16)
  %18 = load %struct.rbsp*, %struct.rbsp** %3, align 8
  %19 = load %struct.nal_h264_pps*, %struct.nal_h264_pps** %4, align 8
  %20 = getelementptr inbounds %struct.nal_h264_pps, %struct.nal_h264_pps* %19, i32 0, i32 24
  %21 = call i32 @rbsp_bit(%struct.rbsp* %18, i64* %20)
  %22 = load %struct.rbsp*, %struct.rbsp** %3, align 8
  %23 = load %struct.nal_h264_pps*, %struct.nal_h264_pps** %4, align 8
  %24 = getelementptr inbounds %struct.nal_h264_pps, %struct.nal_h264_pps* %23, i32 0, i32 2
  %25 = call i32 @rbsp_uev(%struct.rbsp* %22, i64* %24)
  %26 = load %struct.nal_h264_pps*, %struct.nal_h264_pps** %4, align 8
  %27 = getelementptr inbounds %struct.nal_h264_pps, %struct.nal_h264_pps* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %30, label %130

30:                                               ; preds = %2
  %31 = load %struct.rbsp*, %struct.rbsp** %3, align 8
  %32 = load %struct.nal_h264_pps*, %struct.nal_h264_pps** %4, align 8
  %33 = getelementptr inbounds %struct.nal_h264_pps, %struct.nal_h264_pps* %32, i32 0, i32 3
  %34 = call i32 @rbsp_uev(%struct.rbsp* %31, i64* %33)
  %35 = load %struct.nal_h264_pps*, %struct.nal_h264_pps** %4, align 8
  %36 = getelementptr inbounds %struct.nal_h264_pps, %struct.nal_h264_pps* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  switch i64 %37, label %128 [
    i64 0, label %38
    i64 2, label %59
    i64 3, label %88
    i64 4, label %88
    i64 5, label %88
    i64 6, label %97
  ]

38:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %55, %38
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = load %struct.nal_h264_pps*, %struct.nal_h264_pps** %4, align 8
  %43 = getelementptr inbounds %struct.nal_h264_pps, %struct.nal_h264_pps* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp slt i64 %41, %44
  br i1 %45, label %46, label %58

46:                                               ; preds = %39
  %47 = load %struct.rbsp*, %struct.rbsp** %3, align 8
  %48 = load %struct.nal_h264_pps*, %struct.nal_h264_pps** %4, align 8
  %49 = getelementptr inbounds %struct.nal_h264_pps, %struct.nal_h264_pps* %48, i32 0, i32 4
  %50 = load i64*, i64** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = call i32 @rbsp_uev(%struct.rbsp* %47, i64* %53)
  br label %55

55:                                               ; preds = %46
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %5, align 4
  br label %39

58:                                               ; preds = %39
  br label %129

59:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %84, %59
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = load %struct.nal_h264_pps*, %struct.nal_h264_pps** %4, align 8
  %64 = getelementptr inbounds %struct.nal_h264_pps, %struct.nal_h264_pps* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp slt i64 %62, %65
  br i1 %66, label %67, label %87

67:                                               ; preds = %60
  %68 = load %struct.rbsp*, %struct.rbsp** %3, align 8
  %69 = load %struct.nal_h264_pps*, %struct.nal_h264_pps** %4, align 8
  %70 = getelementptr inbounds %struct.nal_h264_pps, %struct.nal_h264_pps* %69, i32 0, i32 5
  %71 = load i64*, i64** %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %71, i64 %73
  %75 = call i32 @rbsp_uev(%struct.rbsp* %68, i64* %74)
  %76 = load %struct.rbsp*, %struct.rbsp** %3, align 8
  %77 = load %struct.nal_h264_pps*, %struct.nal_h264_pps** %4, align 8
  %78 = getelementptr inbounds %struct.nal_h264_pps, %struct.nal_h264_pps* %77, i32 0, i32 6
  %79 = load i64*, i64** %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  %83 = call i32 @rbsp_uev(%struct.rbsp* %76, i64* %82)
  br label %84

84:                                               ; preds = %67
  %85 = load i32, i32* %5, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %5, align 4
  br label %60

87:                                               ; preds = %60
  br label %129

88:                                               ; preds = %30, %30, %30
  %89 = load %struct.rbsp*, %struct.rbsp** %3, align 8
  %90 = load %struct.nal_h264_pps*, %struct.nal_h264_pps** %4, align 8
  %91 = getelementptr inbounds %struct.nal_h264_pps, %struct.nal_h264_pps* %90, i32 0, i32 23
  %92 = call i32 @rbsp_bit(%struct.rbsp* %89, i64* %91)
  %93 = load %struct.rbsp*, %struct.rbsp** %3, align 8
  %94 = load %struct.nal_h264_pps*, %struct.nal_h264_pps** %4, align 8
  %95 = getelementptr inbounds %struct.nal_h264_pps, %struct.nal_h264_pps* %94, i32 0, i32 7
  %96 = call i32 @rbsp_uev(%struct.rbsp* %93, i64* %95)
  br label %129

97:                                               ; preds = %30
  %98 = load %struct.rbsp*, %struct.rbsp** %3, align 8
  %99 = load %struct.nal_h264_pps*, %struct.nal_h264_pps** %4, align 8
  %100 = getelementptr inbounds %struct.nal_h264_pps, %struct.nal_h264_pps* %99, i32 0, i32 8
  %101 = call i32 @rbsp_uev(%struct.rbsp* %98, i64* %100)
  store i32 0, i32* %5, align 4
  br label %102

102:                                              ; preds = %124, %97
  %103 = load i32, i32* %5, align 4
  %104 = sext i32 %103 to i64
  %105 = load %struct.nal_h264_pps*, %struct.nal_h264_pps** %4, align 8
  %106 = getelementptr inbounds %struct.nal_h264_pps, %struct.nal_h264_pps* %105, i32 0, i32 8
  %107 = load i64, i64* %106, align 8
  %108 = icmp slt i64 %104, %107
  br i1 %108, label %109, label %127

109:                                              ; preds = %102
  %110 = load %struct.rbsp*, %struct.rbsp** %3, align 8
  %111 = load %struct.nal_h264_pps*, %struct.nal_h264_pps** %4, align 8
  %112 = getelementptr inbounds %struct.nal_h264_pps, %struct.nal_h264_pps* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %113, 1
  %115 = trunc i64 %114 to i32
  %116 = call i32 @order_base_2(i32 %115)
  %117 = load %struct.nal_h264_pps*, %struct.nal_h264_pps** %4, align 8
  %118 = getelementptr inbounds %struct.nal_h264_pps, %struct.nal_h264_pps* %117, i32 0, i32 22
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %5, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = call i32 @rbsp_bits(%struct.rbsp* %110, i32 %116, i32* %122)
  br label %124

124:                                              ; preds = %109
  %125 = load i32, i32* %5, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %5, align 4
  br label %102

127:                                              ; preds = %102
  br label %129

128:                                              ; preds = %30
  br label %129

129:                                              ; preds = %128, %127, %88, %87, %58
  br label %130

130:                                              ; preds = %129, %2
  %131 = load %struct.rbsp*, %struct.rbsp** %3, align 8
  %132 = load %struct.nal_h264_pps*, %struct.nal_h264_pps** %4, align 8
  %133 = getelementptr inbounds %struct.nal_h264_pps, %struct.nal_h264_pps* %132, i32 0, i32 9
  %134 = call i32 @rbsp_uev(%struct.rbsp* %131, i64* %133)
  %135 = load %struct.rbsp*, %struct.rbsp** %3, align 8
  %136 = load %struct.nal_h264_pps*, %struct.nal_h264_pps** %4, align 8
  %137 = getelementptr inbounds %struct.nal_h264_pps, %struct.nal_h264_pps* %136, i32 0, i32 10
  %138 = call i32 @rbsp_uev(%struct.rbsp* %135, i64* %137)
  %139 = load %struct.rbsp*, %struct.rbsp** %3, align 8
  %140 = load %struct.nal_h264_pps*, %struct.nal_h264_pps** %4, align 8
  %141 = getelementptr inbounds %struct.nal_h264_pps, %struct.nal_h264_pps* %140, i32 0, i32 21
  %142 = call i32 @rbsp_bit(%struct.rbsp* %139, i64* %141)
  %143 = load %struct.rbsp*, %struct.rbsp** %3, align 8
  %144 = load %struct.nal_h264_pps*, %struct.nal_h264_pps** %4, align 8
  %145 = getelementptr inbounds %struct.nal_h264_pps, %struct.nal_h264_pps* %144, i32 0, i32 20
  %146 = call i32 @rbsp_bits(%struct.rbsp* %143, i32 2, i32* %145)
  %147 = load %struct.rbsp*, %struct.rbsp** %3, align 8
  %148 = load %struct.nal_h264_pps*, %struct.nal_h264_pps** %4, align 8
  %149 = getelementptr inbounds %struct.nal_h264_pps, %struct.nal_h264_pps* %148, i32 0, i32 19
  %150 = call i32 @rbsp_sev(%struct.rbsp* %147, i32* %149)
  %151 = load %struct.rbsp*, %struct.rbsp** %3, align 8
  %152 = load %struct.nal_h264_pps*, %struct.nal_h264_pps** %4, align 8
  %153 = getelementptr inbounds %struct.nal_h264_pps, %struct.nal_h264_pps* %152, i32 0, i32 18
  %154 = call i32 @rbsp_sev(%struct.rbsp* %151, i32* %153)
  %155 = load %struct.rbsp*, %struct.rbsp** %3, align 8
  %156 = load %struct.nal_h264_pps*, %struct.nal_h264_pps** %4, align 8
  %157 = getelementptr inbounds %struct.nal_h264_pps, %struct.nal_h264_pps* %156, i32 0, i32 17
  %158 = call i32 @rbsp_sev(%struct.rbsp* %155, i32* %157)
  %159 = load %struct.rbsp*, %struct.rbsp** %3, align 8
  %160 = load %struct.nal_h264_pps*, %struct.nal_h264_pps** %4, align 8
  %161 = getelementptr inbounds %struct.nal_h264_pps, %struct.nal_h264_pps* %160, i32 0, i32 16
  %162 = call i32 @rbsp_bit(%struct.rbsp* %159, i64* %161)
  %163 = load %struct.rbsp*, %struct.rbsp** %3, align 8
  %164 = load %struct.nal_h264_pps*, %struct.nal_h264_pps** %4, align 8
  %165 = getelementptr inbounds %struct.nal_h264_pps, %struct.nal_h264_pps* %164, i32 0, i32 15
  %166 = call i32 @rbsp_bit(%struct.rbsp* %163, i64* %165)
  %167 = load %struct.rbsp*, %struct.rbsp** %3, align 8
  %168 = load %struct.nal_h264_pps*, %struct.nal_h264_pps** %4, align 8
  %169 = getelementptr inbounds %struct.nal_h264_pps, %struct.nal_h264_pps* %168, i32 0, i32 14
  %170 = call i32 @rbsp_bit(%struct.rbsp* %167, i64* %169)
  ret void
}

declare dso_local i32 @rbsp_uev(%struct.rbsp*, i64*) #1

declare dso_local i32 @rbsp_bit(%struct.rbsp*, i64*) #1

declare dso_local i32 @rbsp_bits(%struct.rbsp*, i32, i32*) #1

declare dso_local i32 @order_base_2(i32) #1

declare dso_local i32 @rbsp_sev(%struct.rbsp*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
