; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_udlfb.c_dlfb_handle_damage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_udlfb.c_dlfb_handle_damage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlfb_data = type { i32, i32, i32, i32, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.urb = type { i8*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@BPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlfb_data*, i32, i32, i32, i32)* @dlfb_handle_damage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlfb_handle_damage(%struct.dlfb_data* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.dlfb_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.urb*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.dlfb_data* %0, %struct.dlfb_data** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %23 = call i32 (...) @get_cycles()
  store i32 %23, i32* %14, align 4
  %24 = load %struct.dlfb_data*, %struct.dlfb_data** %6, align 8
  %25 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %24, i32 0, i32 0
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @DL_ALIGN_DOWN(i32 %27, i32 8)
  store i32 %28, i32* %19, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %19, align 4
  %32 = sub nsw i32 %30, %31
  %33 = add nsw i32 %29, %32
  %34 = call i32 @DL_ALIGN_UP(i32 %33, i32 8)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %19, align 4
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp sle i32 %36, 0
  br i1 %37, label %60, label %38

38:                                               ; preds = %5
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %9, align 4
  %41 = add nsw i32 %39, %40
  %42 = load %struct.dlfb_data*, %struct.dlfb_data** %6, align 8
  %43 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %42, i32 0, i32 5
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp sgt i32 %41, %47
  br i1 %48, label %60, label %49

49:                                               ; preds = %38
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %50, %51
  %53 = load %struct.dlfb_data*, %struct.dlfb_data** %6, align 8
  %54 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %53, i32 0, i32 5
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp sgt i32 %52, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %49, %38, %5
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %12, align 4
  br label %183

63:                                               ; preds = %49
  %64 = load %struct.dlfb_data*, %struct.dlfb_data** %6, align 8
  %65 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %64, i32 0, i32 6
  %66 = call i32 @atomic_read(i32* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %63
  store i32 0, i32* %12, align 4
  br label %183

69:                                               ; preds = %63
  %70 = load %struct.dlfb_data*, %struct.dlfb_data** %6, align 8
  %71 = call %struct.urb* @dlfb_get_urb(%struct.dlfb_data* %70)
  store %struct.urb* %71, %struct.urb** %18, align 8
  %72 = load %struct.urb*, %struct.urb** %18, align 8
  %73 = icmp ne %struct.urb* %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %69
  store i32 0, i32* %12, align 4
  br label %183

75:                                               ; preds = %69
  %76 = load %struct.urb*, %struct.urb** %18, align 8
  %77 = getelementptr inbounds %struct.urb, %struct.urb* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  store i8* %78, i8** %13, align 8
  %79 = load i32, i32* %8, align 4
  store i32 %79, i32* %11, align 4
  br label %80

80:                                               ; preds = %116, %75
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %82, %83
  %85 = icmp slt i32 %81, %84
  br i1 %85, label %86, label %119

86:                                               ; preds = %80
  %87 = load %struct.dlfb_data*, %struct.dlfb_data** %6, align 8
  %88 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %87, i32 0, i32 5
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %11, align 4
  %94 = mul nsw i32 %92, %93
  store i32 %94, i32* %20, align 4
  %95 = load i32, i32* %20, align 4
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* @BPP, align 4
  %98 = mul nsw i32 %96, %97
  %99 = add nsw i32 %95, %98
  store i32 %99, i32* %21, align 4
  %100 = load %struct.dlfb_data*, %struct.dlfb_data** %6, align 8
  %101 = load %struct.dlfb_data*, %struct.dlfb_data** %6, align 8
  %102 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %101, i32 0, i32 5
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = inttoptr i64 %106 to i8*
  %108 = load i32, i32* %21, align 4
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* @BPP, align 4
  %111 = mul nsw i32 %109, %110
  %112 = call i64 @dlfb_render_hline(%struct.dlfb_data* %100, %struct.urb** %18, i8* %107, i8** %13, i32 %108, i32 %111, i32* %17, i32* %16)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %86
  br label %159

115:                                              ; preds = %86
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %11, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %11, align 4
  br label %80

119:                                              ; preds = %80
  %120 = load i8*, i8** %13, align 8
  %121 = load %struct.urb*, %struct.urb** %18, align 8
  %122 = getelementptr inbounds %struct.urb, %struct.urb* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = icmp ugt i8* %120, %123
  br i1 %124, label %125, label %155

125:                                              ; preds = %119
  %126 = load i8*, i8** %13, align 8
  %127 = load %struct.urb*, %struct.urb** %18, align 8
  %128 = getelementptr inbounds %struct.urb, %struct.urb* %127, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  %130 = load %struct.urb*, %struct.urb** %18, align 8
  %131 = getelementptr inbounds %struct.urb, %struct.urb* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %129, i64 %133
  %135 = icmp ult i8* %126, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %125
  %137 = load i8*, i8** %13, align 8
  %138 = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %138, i8** %13, align 8
  store i8 -81, i8* %137, align 1
  br label %139

139:                                              ; preds = %136, %125
  %140 = load i8*, i8** %13, align 8
  %141 = load %struct.urb*, %struct.urb** %18, align 8
  %142 = getelementptr inbounds %struct.urb, %struct.urb* %141, i32 0, i32 0
  %143 = load i8*, i8** %142, align 8
  %144 = ptrtoint i8* %140 to i64
  %145 = ptrtoint i8* %143 to i64
  %146 = sub i64 %144, %145
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %22, align 4
  %148 = load %struct.dlfb_data*, %struct.dlfb_data** %6, align 8
  %149 = load %struct.urb*, %struct.urb** %18, align 8
  %150 = load i32, i32* %22, align 4
  %151 = call i32 @dlfb_submit_urb(%struct.dlfb_data* %148, %struct.urb* %149, i32 %150)
  %152 = load i32, i32* %22, align 4
  %153 = load i32, i32* %16, align 4
  %154 = add nsw i32 %153, %152
  store i32 %154, i32* %16, align 4
  br label %158

155:                                              ; preds = %119
  %156 = load %struct.urb*, %struct.urb** %18, align 8
  %157 = call i32 @dlfb_urb_completion(%struct.urb* %156)
  br label %158

158:                                              ; preds = %155, %139
  br label %159

159:                                              ; preds = %158, %114
  %160 = load i32, i32* %16, align 4
  %161 = load %struct.dlfb_data*, %struct.dlfb_data** %6, align 8
  %162 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %161, i32 0, i32 4
  %163 = call i32 @atomic_add(i32 %160, i32* %162)
  %164 = load i32, i32* %17, align 4
  %165 = load %struct.dlfb_data*, %struct.dlfb_data** %6, align 8
  %166 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %165, i32 0, i32 3
  %167 = call i32 @atomic_add(i32 %164, i32* %166)
  %168 = load i32, i32* %9, align 4
  %169 = load i32, i32* %10, align 4
  %170 = mul nsw i32 %168, %169
  %171 = mul nsw i32 %170, 2
  %172 = load %struct.dlfb_data*, %struct.dlfb_data** %6, align 8
  %173 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %172, i32 0, i32 2
  %174 = call i32 @atomic_add(i32 %171, i32* %173)
  %175 = call i32 (...) @get_cycles()
  store i32 %175, i32* %15, align 4
  %176 = load i32, i32* %15, align 4
  %177 = load i32, i32* %14, align 4
  %178 = sub nsw i32 %176, %177
  %179 = ashr i32 %178, 10
  %180 = load %struct.dlfb_data*, %struct.dlfb_data** %6, align 8
  %181 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %180, i32 0, i32 1
  %182 = call i32 @atomic_add(i32 %179, i32* %181)
  store i32 0, i32* %12, align 4
  br label %183

183:                                              ; preds = %159, %74, %68, %60
  %184 = load %struct.dlfb_data*, %struct.dlfb_data** %6, align 8
  %185 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %184, i32 0, i32 0
  %186 = call i32 @mutex_unlock(i32* %185)
  %187 = load i32, i32* %12, align 4
  ret i32 %187
}

declare dso_local i32 @get_cycles(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @DL_ALIGN_DOWN(i32, i32) #1

declare dso_local i32 @DL_ALIGN_UP(i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local %struct.urb* @dlfb_get_urb(%struct.dlfb_data*) #1

declare dso_local i64 @dlfb_render_hline(%struct.dlfb_data*, %struct.urb**, i8*, i8**, i32, i32, i32*, i32*) #1

declare dso_local i32 @dlfb_submit_urb(%struct.dlfb_data*, %struct.urb*, i32) #1

declare dso_local i32 @dlfb_urb_completion(%struct.urb*) #1

declare dso_local i32 @atomic_add(i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
