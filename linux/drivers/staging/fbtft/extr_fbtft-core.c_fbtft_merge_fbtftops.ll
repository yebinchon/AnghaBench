; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fbtft-core.c_fbtft_merge_fbtftops.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fbtft-core.c_fbtft_merge_fbtftops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fbtft_ops = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fbtft_ops*, %struct.fbtft_ops*)* @fbtft_merge_fbtftops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fbtft_merge_fbtftops(%struct.fbtft_ops* %0, %struct.fbtft_ops* %1) #0 {
  %3 = alloca %struct.fbtft_ops*, align 8
  %4 = alloca %struct.fbtft_ops*, align 8
  store %struct.fbtft_ops* %0, %struct.fbtft_ops** %3, align 8
  store %struct.fbtft_ops* %1, %struct.fbtft_ops** %4, align 8
  %5 = load %struct.fbtft_ops*, %struct.fbtft_ops** %4, align 8
  %6 = getelementptr inbounds %struct.fbtft_ops, %struct.fbtft_ops* %5, i32 0, i32 16
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load %struct.fbtft_ops*, %struct.fbtft_ops** %4, align 8
  %11 = getelementptr inbounds %struct.fbtft_ops, %struct.fbtft_ops* %10, i32 0, i32 16
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.fbtft_ops*, %struct.fbtft_ops** %3, align 8
  %14 = getelementptr inbounds %struct.fbtft_ops, %struct.fbtft_ops* %13, i32 0, i32 16
  store i64 %12, i64* %14, align 8
  br label %15

15:                                               ; preds = %9, %2
  %16 = load %struct.fbtft_ops*, %struct.fbtft_ops** %4, align 8
  %17 = getelementptr inbounds %struct.fbtft_ops, %struct.fbtft_ops* %16, i32 0, i32 15
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load %struct.fbtft_ops*, %struct.fbtft_ops** %4, align 8
  %22 = getelementptr inbounds %struct.fbtft_ops, %struct.fbtft_ops* %21, i32 0, i32 15
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.fbtft_ops*, %struct.fbtft_ops** %3, align 8
  %25 = getelementptr inbounds %struct.fbtft_ops, %struct.fbtft_ops* %24, i32 0, i32 15
  store i64 %23, i64* %25, align 8
  br label %26

26:                                               ; preds = %20, %15
  %27 = load %struct.fbtft_ops*, %struct.fbtft_ops** %4, align 8
  %28 = getelementptr inbounds %struct.fbtft_ops, %struct.fbtft_ops* %27, i32 0, i32 14
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load %struct.fbtft_ops*, %struct.fbtft_ops** %4, align 8
  %33 = getelementptr inbounds %struct.fbtft_ops, %struct.fbtft_ops* %32, i32 0, i32 14
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.fbtft_ops*, %struct.fbtft_ops** %3, align 8
  %36 = getelementptr inbounds %struct.fbtft_ops, %struct.fbtft_ops* %35, i32 0, i32 14
  store i64 %34, i64* %36, align 8
  br label %37

37:                                               ; preds = %31, %26
  %38 = load %struct.fbtft_ops*, %struct.fbtft_ops** %4, align 8
  %39 = getelementptr inbounds %struct.fbtft_ops, %struct.fbtft_ops* %38, i32 0, i32 13
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load %struct.fbtft_ops*, %struct.fbtft_ops** %4, align 8
  %44 = getelementptr inbounds %struct.fbtft_ops, %struct.fbtft_ops* %43, i32 0, i32 13
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.fbtft_ops*, %struct.fbtft_ops** %3, align 8
  %47 = getelementptr inbounds %struct.fbtft_ops, %struct.fbtft_ops* %46, i32 0, i32 13
  store i64 %45, i64* %47, align 8
  br label %48

48:                                               ; preds = %42, %37
  %49 = load %struct.fbtft_ops*, %struct.fbtft_ops** %4, align 8
  %50 = getelementptr inbounds %struct.fbtft_ops, %struct.fbtft_ops* %49, i32 0, i32 12
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load %struct.fbtft_ops*, %struct.fbtft_ops** %4, align 8
  %55 = getelementptr inbounds %struct.fbtft_ops, %struct.fbtft_ops* %54, i32 0, i32 12
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.fbtft_ops*, %struct.fbtft_ops** %3, align 8
  %58 = getelementptr inbounds %struct.fbtft_ops, %struct.fbtft_ops* %57, i32 0, i32 12
  store i64 %56, i64* %58, align 8
  br label %59

59:                                               ; preds = %53, %48
  %60 = load %struct.fbtft_ops*, %struct.fbtft_ops** %4, align 8
  %61 = getelementptr inbounds %struct.fbtft_ops, %struct.fbtft_ops* %60, i32 0, i32 11
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load %struct.fbtft_ops*, %struct.fbtft_ops** %4, align 8
  %66 = getelementptr inbounds %struct.fbtft_ops, %struct.fbtft_ops* %65, i32 0, i32 11
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.fbtft_ops*, %struct.fbtft_ops** %3, align 8
  %69 = getelementptr inbounds %struct.fbtft_ops, %struct.fbtft_ops* %68, i32 0, i32 11
  store i64 %67, i64* %69, align 8
  br label %70

70:                                               ; preds = %64, %59
  %71 = load %struct.fbtft_ops*, %struct.fbtft_ops** %4, align 8
  %72 = getelementptr inbounds %struct.fbtft_ops, %struct.fbtft_ops* %71, i32 0, i32 10
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = load %struct.fbtft_ops*, %struct.fbtft_ops** %4, align 8
  %77 = getelementptr inbounds %struct.fbtft_ops, %struct.fbtft_ops* %76, i32 0, i32 10
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.fbtft_ops*, %struct.fbtft_ops** %3, align 8
  %80 = getelementptr inbounds %struct.fbtft_ops, %struct.fbtft_ops* %79, i32 0, i32 10
  store i64 %78, i64* %80, align 8
  br label %81

81:                                               ; preds = %75, %70
  %82 = load %struct.fbtft_ops*, %struct.fbtft_ops** %4, align 8
  %83 = getelementptr inbounds %struct.fbtft_ops, %struct.fbtft_ops* %82, i32 0, i32 9
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %81
  %87 = load %struct.fbtft_ops*, %struct.fbtft_ops** %4, align 8
  %88 = getelementptr inbounds %struct.fbtft_ops, %struct.fbtft_ops* %87, i32 0, i32 9
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.fbtft_ops*, %struct.fbtft_ops** %3, align 8
  %91 = getelementptr inbounds %struct.fbtft_ops, %struct.fbtft_ops* %90, i32 0, i32 9
  store i64 %89, i64* %91, align 8
  br label %92

92:                                               ; preds = %86, %81
  %93 = load %struct.fbtft_ops*, %struct.fbtft_ops** %4, align 8
  %94 = getelementptr inbounds %struct.fbtft_ops, %struct.fbtft_ops* %93, i32 0, i32 8
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %92
  %98 = load %struct.fbtft_ops*, %struct.fbtft_ops** %4, align 8
  %99 = getelementptr inbounds %struct.fbtft_ops, %struct.fbtft_ops* %98, i32 0, i32 8
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.fbtft_ops*, %struct.fbtft_ops** %3, align 8
  %102 = getelementptr inbounds %struct.fbtft_ops, %struct.fbtft_ops* %101, i32 0, i32 8
  store i64 %100, i64* %102, align 8
  br label %103

103:                                              ; preds = %97, %92
  %104 = load %struct.fbtft_ops*, %struct.fbtft_ops** %4, align 8
  %105 = getelementptr inbounds %struct.fbtft_ops, %struct.fbtft_ops* %104, i32 0, i32 7
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %103
  %109 = load %struct.fbtft_ops*, %struct.fbtft_ops** %4, align 8
  %110 = getelementptr inbounds %struct.fbtft_ops, %struct.fbtft_ops* %109, i32 0, i32 7
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.fbtft_ops*, %struct.fbtft_ops** %3, align 8
  %113 = getelementptr inbounds %struct.fbtft_ops, %struct.fbtft_ops* %112, i32 0, i32 7
  store i64 %111, i64* %113, align 8
  br label %114

114:                                              ; preds = %108, %103
  %115 = load %struct.fbtft_ops*, %struct.fbtft_ops** %4, align 8
  %116 = getelementptr inbounds %struct.fbtft_ops, %struct.fbtft_ops* %115, i32 0, i32 6
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %114
  %120 = load %struct.fbtft_ops*, %struct.fbtft_ops** %4, align 8
  %121 = getelementptr inbounds %struct.fbtft_ops, %struct.fbtft_ops* %120, i32 0, i32 6
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.fbtft_ops*, %struct.fbtft_ops** %3, align 8
  %124 = getelementptr inbounds %struct.fbtft_ops, %struct.fbtft_ops* %123, i32 0, i32 6
  store i64 %122, i64* %124, align 8
  br label %125

125:                                              ; preds = %119, %114
  %126 = load %struct.fbtft_ops*, %struct.fbtft_ops** %4, align 8
  %127 = getelementptr inbounds %struct.fbtft_ops, %struct.fbtft_ops* %126, i32 0, i32 5
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %125
  %131 = load %struct.fbtft_ops*, %struct.fbtft_ops** %4, align 8
  %132 = getelementptr inbounds %struct.fbtft_ops, %struct.fbtft_ops* %131, i32 0, i32 5
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.fbtft_ops*, %struct.fbtft_ops** %3, align 8
  %135 = getelementptr inbounds %struct.fbtft_ops, %struct.fbtft_ops* %134, i32 0, i32 5
  store i64 %133, i64* %135, align 8
  br label %136

136:                                              ; preds = %130, %125
  %137 = load %struct.fbtft_ops*, %struct.fbtft_ops** %4, align 8
  %138 = getelementptr inbounds %struct.fbtft_ops, %struct.fbtft_ops* %137, i32 0, i32 4
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %136
  %142 = load %struct.fbtft_ops*, %struct.fbtft_ops** %4, align 8
  %143 = getelementptr inbounds %struct.fbtft_ops, %struct.fbtft_ops* %142, i32 0, i32 4
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.fbtft_ops*, %struct.fbtft_ops** %3, align 8
  %146 = getelementptr inbounds %struct.fbtft_ops, %struct.fbtft_ops* %145, i32 0, i32 4
  store i64 %144, i64* %146, align 8
  br label %147

147:                                              ; preds = %141, %136
  %148 = load %struct.fbtft_ops*, %struct.fbtft_ops** %4, align 8
  %149 = getelementptr inbounds %struct.fbtft_ops, %struct.fbtft_ops* %148, i32 0, i32 3
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %147
  %153 = load %struct.fbtft_ops*, %struct.fbtft_ops** %4, align 8
  %154 = getelementptr inbounds %struct.fbtft_ops, %struct.fbtft_ops* %153, i32 0, i32 3
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.fbtft_ops*, %struct.fbtft_ops** %3, align 8
  %157 = getelementptr inbounds %struct.fbtft_ops, %struct.fbtft_ops* %156, i32 0, i32 3
  store i64 %155, i64* %157, align 8
  br label %158

158:                                              ; preds = %152, %147
  %159 = load %struct.fbtft_ops*, %struct.fbtft_ops** %4, align 8
  %160 = getelementptr inbounds %struct.fbtft_ops, %struct.fbtft_ops* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %158
  %164 = load %struct.fbtft_ops*, %struct.fbtft_ops** %4, align 8
  %165 = getelementptr inbounds %struct.fbtft_ops, %struct.fbtft_ops* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.fbtft_ops*, %struct.fbtft_ops** %3, align 8
  %168 = getelementptr inbounds %struct.fbtft_ops, %struct.fbtft_ops* %167, i32 0, i32 2
  store i64 %166, i64* %168, align 8
  br label %169

169:                                              ; preds = %163, %158
  %170 = load %struct.fbtft_ops*, %struct.fbtft_ops** %4, align 8
  %171 = getelementptr inbounds %struct.fbtft_ops, %struct.fbtft_ops* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %169
  %175 = load %struct.fbtft_ops*, %struct.fbtft_ops** %4, align 8
  %176 = getelementptr inbounds %struct.fbtft_ops, %struct.fbtft_ops* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.fbtft_ops*, %struct.fbtft_ops** %3, align 8
  %179 = getelementptr inbounds %struct.fbtft_ops, %struct.fbtft_ops* %178, i32 0, i32 1
  store i64 %177, i64* %179, align 8
  br label %180

180:                                              ; preds = %174, %169
  %181 = load %struct.fbtft_ops*, %struct.fbtft_ops** %4, align 8
  %182 = getelementptr inbounds %struct.fbtft_ops, %struct.fbtft_ops* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %191

185:                                              ; preds = %180
  %186 = load %struct.fbtft_ops*, %struct.fbtft_ops** %4, align 8
  %187 = getelementptr inbounds %struct.fbtft_ops, %struct.fbtft_ops* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.fbtft_ops*, %struct.fbtft_ops** %3, align 8
  %190 = getelementptr inbounds %struct.fbtft_ops, %struct.fbtft_ops* %189, i32 0, i32 0
  store i64 %188, i64* %190, align 8
  br label %191

191:                                              ; preds = %185, %180
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
