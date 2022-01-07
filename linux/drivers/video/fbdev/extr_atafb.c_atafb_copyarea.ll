; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_atafb.c_atafb_copyarea.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_atafb.c_atafb_copyarea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.fb_copyarea = type { i32, i32, i32, i32, i32, i32 }
%struct.atafb_par = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, %struct.fb_copyarea*)* @atafb_copyarea to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atafb_copyarea(%struct.fb_info* %0, %struct.fb_copyarea* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_copyarea*, align 8
  %5 = alloca %struct.atafb_par*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_copyarea* %1, %struct.fb_copyarea** %4, align 8
  %15 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %16 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.atafb_par*
  store %struct.atafb_par* %18, %struct.atafb_par** %5, align 8
  store i32 0, i32* %14, align 4
  %19 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %20 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %23 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %21, %24
  store i32 %25, i32* %6, align 4
  %26 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %27 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %30 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %28, %31
  store i32 %32, i32* %7, align 4
  %33 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %34 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %2
  %38 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %39 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  br label %42

41:                                               ; preds = %2
  br label %42

42:                                               ; preds = %41, %37
  %43 = phi i32 [ %40, %37 ], [ 0, %41 ]
  store i32 %43, i32* %8, align 4
  %44 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %45 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %50 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  br label %53

52:                                               ; preds = %42
  br label %53

53:                                               ; preds = %52, %48
  %54 = phi i32 [ %51, %48 ], [ 0, %52 ]
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %57 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp slt i32 %55, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %53
  %62 = load i32, i32* %6, align 4
  br label %68

63:                                               ; preds = %53
  %64 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %65 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  br label %68

68:                                               ; preds = %63, %61
  %69 = phi i32 [ %62, %61 ], [ %67, %63 ]
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %72 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = icmp slt i32 %70, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %68
  %77 = load i32, i32* %7, align 4
  br label %83

78:                                               ; preds = %68
  %79 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %80 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  br label %83

83:                                               ; preds = %78, %76
  %84 = phi i32 [ %77, %76 ], [ %82, %78 ]
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* %8, align 4
  %87 = sub nsw i32 %85, %86
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %9, align 4
  %90 = sub nsw i32 %88, %89
  store i32 %90, i32* %13, align 4
  %91 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %92 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %8, align 4
  %95 = add nsw i32 %93, %94
  %96 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %97 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp slt i32 %95, %98
  br i1 %99, label %110, label %100

100:                                              ; preds = %83
  %101 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %102 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %9, align 4
  %105 = add nsw i32 %103, %104
  %106 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %107 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = icmp slt i32 %105, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %100, %83
  br label %236

111:                                              ; preds = %100
  %112 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %113 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %8, align 4
  %116 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %117 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = sub nsw i32 %115, %118
  %120 = add nsw i32 %114, %119
  store i32 %120, i32* %10, align 4
  %121 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %122 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %9, align 4
  %125 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %126 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = sub nsw i32 %124, %127
  %129 = add nsw i32 %123, %128
  store i32 %129, i32* %11, align 4
  %130 = load i32, i32* %10, align 4
  %131 = load i32, i32* %12, align 4
  %132 = add nsw i32 %130, %131
  %133 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %134 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = icmp sgt i32 %132, %136
  br i1 %137, label %147, label %138

138:                                              ; preds = %111
  %139 = load i32, i32* %11, align 4
  %140 = load i32, i32* %13, align 4
  %141 = add nsw i32 %139, %140
  %142 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %143 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = icmp sgt i32 %141, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %138, %111
  br label %236

148:                                              ; preds = %138
  %149 = load i32, i32* %9, align 4
  %150 = load i32, i32* %11, align 4
  %151 = icmp sgt i32 %149, %150
  br i1 %151, label %160, label %152

152:                                              ; preds = %148
  %153 = load i32, i32* %9, align 4
  %154 = load i32, i32* %11, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %167

156:                                              ; preds = %152
  %157 = load i32, i32* %8, align 4
  %158 = load i32, i32* %10, align 4
  %159 = icmp sgt i32 %157, %158
  br i1 %159, label %160, label %167

160:                                              ; preds = %156, %148
  %161 = load i32, i32* %13, align 4
  %162 = load i32, i32* %9, align 4
  %163 = add nsw i32 %162, %161
  store i32 %163, i32* %9, align 4
  %164 = load i32, i32* %13, align 4
  %165 = load i32, i32* %11, align 4
  %166 = add nsw i32 %165, %164
  store i32 %166, i32* %11, align 4
  store i32 1, i32* %14, align 4
  br label %167

167:                                              ; preds = %160, %156, %152
  %168 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %169 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = icmp eq i32 %171, 1
  br i1 %172, label %173, label %185

173:                                              ; preds = %167
  %174 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %175 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %176 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* %11, align 4
  %179 = load i32, i32* %10, align 4
  %180 = load i32, i32* %9, align 4
  %181 = load i32, i32* %8, align 4
  %182 = load i32, i32* %13, align 4
  %183 = load i32, i32* %12, align 4
  %184 = call i32 @atafb_mfb_copyarea(%struct.fb_info* %174, i32 %177, i32 %178, i32 %179, i32 %180, i32 %181, i32 %182, i32 %183)
  br label %235

185:                                              ; preds = %167
  %186 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %187 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = icmp eq i32 %189, 2
  br i1 %190, label %191, label %203

191:                                              ; preds = %185
  %192 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %193 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %194 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* %11, align 4
  %197 = load i32, i32* %10, align 4
  %198 = load i32, i32* %9, align 4
  %199 = load i32, i32* %8, align 4
  %200 = load i32, i32* %13, align 4
  %201 = load i32, i32* %12, align 4
  %202 = call i32 @atafb_iplan2p2_copyarea(%struct.fb_info* %192, i32 %195, i32 %196, i32 %197, i32 %198, i32 %199, i32 %200, i32 %201)
  br label %234

203:                                              ; preds = %185
  %204 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %205 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = icmp eq i32 %207, 4
  br i1 %208, label %209, label %221

209:                                              ; preds = %203
  %210 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %211 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %212 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* %11, align 4
  %215 = load i32, i32* %10, align 4
  %216 = load i32, i32* %9, align 4
  %217 = load i32, i32* %8, align 4
  %218 = load i32, i32* %13, align 4
  %219 = load i32, i32* %12, align 4
  %220 = call i32 @atafb_iplan2p4_copyarea(%struct.fb_info* %210, i32 %213, i32 %214, i32 %215, i32 %216, i32 %217, i32 %218, i32 %219)
  br label %233

221:                                              ; preds = %203
  %222 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %223 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %224 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* %11, align 4
  %227 = load i32, i32* %10, align 4
  %228 = load i32, i32* %9, align 4
  %229 = load i32, i32* %8, align 4
  %230 = load i32, i32* %13, align 4
  %231 = load i32, i32* %12, align 4
  %232 = call i32 @atafb_iplan2p8_copyarea(%struct.fb_info* %222, i32 %225, i32 %226, i32 %227, i32 %228, i32 %229, i32 %230, i32 %231)
  br label %233

233:                                              ; preds = %221, %209
  br label %234

234:                                              ; preds = %233, %191
  br label %235

235:                                              ; preds = %234, %173
  br label %236

236:                                              ; preds = %235, %147, %110
  ret void
}

declare dso_local i32 @atafb_mfb_copyarea(%struct.fb_info*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @atafb_iplan2p2_copyarea(%struct.fb_info*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @atafb_iplan2p4_copyarea(%struct.fb_info*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @atafb_iplan2p8_copyarea(%struct.fb_info*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
