; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pm2fb.c_pm2fb_setcolreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pm2fb.c_pm2fb_setcolreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_8__, %struct.pm2fb_par* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, i64 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.pm2fb_par = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, %struct.fb_info*)* @pm2fb_setcolreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm2fb_setcolreg(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.fb_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fb_info*, align 8
  %14 = alloca %struct.pm2fb_par*, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.fb_info* %5, %struct.fb_info** %13, align 8
  %16 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %17 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %16, i32 0, i32 3
  %18 = load %struct.pm2fb_par*, %struct.pm2fb_par** %17, align 8
  store %struct.pm2fb_par* %18, %struct.pm2fb_par** %14, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %21 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp uge i32 %19, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %6
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %7, align 4
  br label %192

28:                                               ; preds = %6
  %29 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %30 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 5
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %28
  %35 = load i32, i32* %9, align 4
  %36 = mul i32 %35, 77
  %37 = load i32, i32* %10, align 4
  %38 = mul i32 %37, 151
  %39 = add i32 %36, %38
  %40 = load i32, i32* %11, align 4
  %41 = mul i32 %40, 28
  %42 = add i32 %39, %41
  %43 = lshr i32 %42, 8
  store i32 %43, i32* %11, align 4
  store i32 %43, i32* %10, align 4
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %34, %28
  %45 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %46 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  switch i32 %48, label %119 [
    i32 128, label %49
    i32 129, label %49
    i32 130, label %94
  ]

49:                                               ; preds = %44, %44
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %52 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 %50, %55
  %57 = add i32 %56, 32767
  %58 = load i32, i32* %9, align 4
  %59 = sub i32 %57, %58
  %60 = lshr i32 %59, 16
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %63 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = shl i32 %61, %66
  %68 = add i32 %67, 32767
  %69 = load i32, i32* %10, align 4
  %70 = sub i32 %68, %69
  %71 = lshr i32 %70, 16
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %11, align 4
  %73 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %74 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = shl i32 %72, %77
  %79 = add i32 %78, 32767
  %80 = load i32, i32* %11, align 4
  %81 = sub i32 %79, %80
  %82 = lshr i32 %81, 16
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %12, align 4
  %84 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %85 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = shl i32 %83, %88
  %90 = add i32 %89, 32767
  %91 = load i32, i32* %12, align 4
  %92 = sub i32 %90, %91
  %93 = lshr i32 %92, 16
  store i32 %93, i32* %12, align 4
  br label %119

94:                                               ; preds = %44
  %95 = load i32, i32* %9, align 4
  %96 = shl i32 %95, 8
  %97 = add i32 %96, 32767
  %98 = load i32, i32* %9, align 4
  %99 = sub i32 %97, %98
  %100 = lshr i32 %99, 16
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* %10, align 4
  %102 = shl i32 %101, 8
  %103 = add i32 %102, 32767
  %104 = load i32, i32* %10, align 4
  %105 = sub i32 %103, %104
  %106 = lshr i32 %105, 16
  store i32 %106, i32* %10, align 4
  %107 = load i32, i32* %11, align 4
  %108 = shl i32 %107, 8
  %109 = add i32 %108, 32767
  %110 = load i32, i32* %11, align 4
  %111 = sub i32 %109, %110
  %112 = lshr i32 %111, 16
  store i32 %112, i32* %11, align 4
  %113 = load i32, i32* %12, align 4
  %114 = shl i32 %113, 8
  %115 = add i32 %114, 32767
  %116 = load i32, i32* %12, align 4
  %117 = sub i32 %115, %116
  %118 = lshr i32 %117, 16
  store i32 %118, i32* %12, align 4
  br label %119

119:                                              ; preds = %44, %94, %49
  %120 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %121 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp eq i32 %123, 128
  br i1 %124, label %125, label %177

125:                                              ; preds = %119
  %126 = load i32, i32* %8, align 4
  %127 = icmp uge i32 %126, 16
  br i1 %127, label %128, label %131

128:                                              ; preds = %125
  %129 = load i32, i32* @EINVAL, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %7, align 4
  br label %192

131:                                              ; preds = %125
  %132 = load i32, i32* %9, align 4
  %133 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %134 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 4
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = shl i32 %132, %137
  %139 = load i32, i32* %10, align 4
  %140 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %141 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 3
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = shl i32 %139, %144
  %146 = or i32 %138, %145
  %147 = load i32, i32* %11, align 4
  %148 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %149 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = shl i32 %147, %152
  %154 = or i32 %146, %153
  %155 = load i32, i32* %12, align 4
  %156 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %157 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = shl i32 %155, %160
  %162 = or i32 %154, %161
  store i32 %162, i32* %15, align 4
  %163 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %164 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  switch i32 %166, label %176 [
    i32 8, label %167
    i32 16, label %168
    i32 24, label %168
    i32 32, label %168
  ]

167:                                              ; preds = %131
  br label %176

168:                                              ; preds = %131, %131, %131
  %169 = load i32, i32* %15, align 4
  %170 = load %struct.pm2fb_par*, %struct.pm2fb_par** %14, align 8
  %171 = getelementptr inbounds %struct.pm2fb_par, %struct.pm2fb_par* %170, i32 0, i32 0
  %172 = load i32*, i32** %171, align 8
  %173 = load i32, i32* %8, align 4
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  store i32 %169, i32* %175, align 4
  br label %176

176:                                              ; preds = %131, %168, %167
  store i32 0, i32* %7, align 4
  br label %192

177:                                              ; preds = %119
  %178 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %179 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = icmp eq i32 %181, 129
  br i1 %182, label %183, label %190

183:                                              ; preds = %177
  %184 = load %struct.pm2fb_par*, %struct.pm2fb_par** %14, align 8
  %185 = load i32, i32* %8, align 4
  %186 = load i32, i32* %9, align 4
  %187 = load i32, i32* %10, align 4
  %188 = load i32, i32* %11, align 4
  %189 = call i32 @set_color(%struct.pm2fb_par* %184, i32 %185, i32 %186, i32 %187, i32 %188)
  br label %190

190:                                              ; preds = %183, %177
  br label %191

191:                                              ; preds = %190
  store i32 0, i32* %7, align 4
  br label %192

192:                                              ; preds = %191, %176, %128, %25
  %193 = load i32, i32* %7, align 4
  ret i32 %193
}

declare dso_local i32 @set_color(%struct.pm2fb_par*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
