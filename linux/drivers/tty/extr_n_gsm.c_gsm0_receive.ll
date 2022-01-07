; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_gsm.c_gsm0_receive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_gsm.c_gsm0_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsm_mux = type { i32, i32, i32, i8, i32, i32, i8*, i8, i32, i8* }

@GSM0_SOF = common dso_local global i8 0, align 1
@INIT_FCS = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gsm_mux*, i8)* @gsm0_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gsm0_receive(%struct.gsm_mux* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.gsm_mux*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store %struct.gsm_mux* %0, %struct.gsm_mux** %3, align 8
  store i8 %1, i8* %4, align 1
  %6 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %7 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %185 [
    i32 129, label %9
    i32 135, label %26
    i32 134, label %43
    i32 131, label %56
    i32 130, label %101
    i32 133, label %145
    i32 132, label %167
    i32 128, label %175
  ]

9:                                                ; preds = %2
  %10 = load i8, i8* %4, align 1
  %11 = zext i8 %10 to i32
  %12 = load i8, i8* @GSM0_SOF, align 1
  %13 = zext i8 %12 to i32
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %9
  %16 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %17 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %16, i32 0, i32 0
  store i32 135, i32* %17, align 8
  %18 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %19 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %18, i32 0, i32 1
  store i32 0, i32* %19, align 4
  %20 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %21 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %20, i32 0, i32 2
  store i32 0, i32* %21, align 8
  %22 = load i8*, i8** @INIT_FCS, align 8
  %23 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %24 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %23, i32 0, i32 9
  store i8* %22, i8** %24, align 8
  br label %25

25:                                               ; preds = %15, %9
  br label %185

26:                                               ; preds = %2
  %27 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %28 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %27, i32 0, i32 9
  %29 = load i8*, i8** %28, align 8
  %30 = load i8, i8* %4, align 1
  %31 = call i8* @gsm_fcs_add(i8* %29, i8 zeroext %30)
  %32 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %33 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %32, i32 0, i32 9
  store i8* %31, i8** %33, align 8
  %34 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %35 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %34, i32 0, i32 1
  %36 = load i8, i8* %4, align 1
  %37 = call i32 @gsm_read_ea(i32* %35, i8 zeroext %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %26
  %40 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %41 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %40, i32 0, i32 0
  store i32 134, i32* %41, align 8
  br label %42

42:                                               ; preds = %39, %26
  br label %185

43:                                               ; preds = %2
  %44 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %45 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %44, i32 0, i32 9
  %46 = load i8*, i8** %45, align 8
  %47 = load i8, i8* %4, align 1
  %48 = call i8* @gsm_fcs_add(i8* %46, i8 zeroext %47)
  %49 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %50 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %49, i32 0, i32 9
  store i8* %48, i8** %50, align 8
  %51 = load i8, i8* %4, align 1
  %52 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %53 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %52, i32 0, i32 3
  store i8 %51, i8* %53, align 4
  %54 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %55 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %54, i32 0, i32 0
  store i32 131, i32* %55, align 8
  br label %185

56:                                               ; preds = %2
  %57 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %58 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %57, i32 0, i32 9
  %59 = load i8*, i8** %58, align 8
  %60 = load i8, i8* %4, align 1
  %61 = call i8* @gsm_fcs_add(i8* %59, i8 zeroext %60)
  %62 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %63 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %62, i32 0, i32 9
  store i8* %61, i8** %63, align 8
  %64 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %65 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %64, i32 0, i32 2
  %66 = load i8, i8* %4, align 1
  %67 = call i32 @gsm_read_ea(i32* %65, i8 zeroext %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %98

69:                                               ; preds = %56
  %70 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %71 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %74 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = icmp ugt i32 %72, %75
  br i1 %76, label %77, label %84

77:                                               ; preds = %69
  %78 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %79 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %78, i32 0, i32 8
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 4
  %82 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %83 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %82, i32 0, i32 0
  store i32 129, i32* %83, align 8
  br label %185

84:                                               ; preds = %69
  %85 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %86 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %85, i32 0, i32 5
  store i32 0, i32* %86, align 4
  %87 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %88 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %84
  %92 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %93 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %92, i32 0, i32 0
  store i32 132, i32* %93, align 8
  br label %97

94:                                               ; preds = %84
  %95 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %96 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %95, i32 0, i32 0
  store i32 133, i32* %96, align 8
  br label %97

97:                                               ; preds = %94, %91
  br label %185

98:                                               ; preds = %56
  %99 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %100 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %99, i32 0, i32 0
  store i32 130, i32* %100, align 8
  br label %185

101:                                              ; preds = %2
  %102 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %103 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %102, i32 0, i32 9
  %104 = load i8*, i8** %103, align 8
  %105 = load i8, i8* %4, align 1
  %106 = call i8* @gsm_fcs_add(i8* %104, i8 zeroext %105)
  %107 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %108 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %107, i32 0, i32 9
  store i8* %106, i8** %108, align 8
  %109 = load i8, i8* %4, align 1
  %110 = zext i8 %109 to i32
  store i32 %110, i32* %5, align 4
  %111 = load i32, i32* %5, align 4
  %112 = shl i32 %111, 7
  %113 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %114 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 8
  %117 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %118 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %121 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  %123 = icmp ugt i32 %119, %122
  br i1 %123, label %124, label %131

124:                                              ; preds = %101
  %125 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %126 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %125, i32 0, i32 8
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %126, align 4
  %129 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %130 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %129, i32 0, i32 0
  store i32 129, i32* %130, align 8
  br label %185

131:                                              ; preds = %101
  %132 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %133 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %132, i32 0, i32 5
  store i32 0, i32* %133, align 4
  %134 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %135 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %141, label %138

138:                                              ; preds = %131
  %139 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %140 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %139, i32 0, i32 0
  store i32 132, i32* %140, align 8
  br label %144

141:                                              ; preds = %131
  %142 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %143 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %142, i32 0, i32 0
  store i32 133, i32* %143, align 8
  br label %144

144:                                              ; preds = %141, %138
  br label %185

145:                                              ; preds = %2
  %146 = load i8, i8* %4, align 1
  %147 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %148 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %147, i32 0, i32 6
  %149 = load i8*, i8** %148, align 8
  %150 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %151 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %150, i32 0, i32 5
  %152 = load i32, i32* %151, align 4
  %153 = add i32 %152, 1
  store i32 %153, i32* %151, align 4
  %154 = zext i32 %152 to i64
  %155 = getelementptr inbounds i8, i8* %149, i64 %154
  store i8 %146, i8* %155, align 1
  %156 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %157 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %156, i32 0, i32 5
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %160 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = icmp eq i32 %158, %161
  br i1 %162, label %163, label %166

163:                                              ; preds = %145
  %164 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %165 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %164, i32 0, i32 0
  store i32 132, i32* %165, align 8
  br label %166

166:                                              ; preds = %163, %145
  br label %185

167:                                              ; preds = %2
  %168 = load i8, i8* %4, align 1
  %169 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %170 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %169, i32 0, i32 7
  store i8 %168, i8* %170, align 8
  %171 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %172 = call i32 @gsm_queue(%struct.gsm_mux* %171)
  %173 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %174 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %173, i32 0, i32 0
  store i32 128, i32* %174, align 8
  br label %185

175:                                              ; preds = %2
  %176 = load i8, i8* %4, align 1
  %177 = zext i8 %176 to i32
  %178 = load i8, i8* @GSM0_SOF, align 1
  %179 = zext i8 %178 to i32
  %180 = icmp eq i32 %177, %179
  br i1 %180, label %181, label %184

181:                                              ; preds = %175
  %182 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %183 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %182, i32 0, i32 0
  store i32 129, i32* %183, align 8
  br label %185

184:                                              ; preds = %175
  br label %185

185:                                              ; preds = %2, %184, %181, %167, %166, %144, %124, %98, %97, %77, %43, %42, %25
  ret void
}

declare dso_local i8* @gsm_fcs_add(i8*, i8 zeroext) #1

declare dso_local i32 @gsm_read_ea(i32*, i8 zeroext) #1

declare dso_local i32 @gsm_queue(%struct.gsm_mux*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
