; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_radeon_base.c_radeon_setcolreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_radeon_base.c_radeon_setcolreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeonfb_info = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@PALETTE_INDEX = common dso_local global i32 0, align 4
@PALETTE_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, %struct.radeonfb_info*)* @radeon_setcolreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_setcolreg(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.radeonfb_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.radeonfb_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.radeonfb_info* %5, %struct.radeonfb_info** %13, align 8
  %17 = load i32, i32* %8, align 4
  %18 = icmp ugt i32 %17, 255
  br i1 %18, label %19, label %22

19:                                               ; preds = %6
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %7, align 4
  br label %218

22:                                               ; preds = %6
  %23 = load i32, i32* %9, align 4
  %24 = lshr i32 %23, 8
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %10, align 4
  %26 = lshr i32 %25, 8
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %11, align 4
  %28 = lshr i32 %27, 8
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.radeonfb_info*, %struct.radeonfb_info** %13, align 8
  %31 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %30, i32 0, i32 3
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store i32 %29, i32* %36, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load %struct.radeonfb_info*, %struct.radeonfb_info** %13, align 8
  %39 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %38, i32 0, i32 3
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  store i32 %37, i32* %44, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load %struct.radeonfb_info*, %struct.radeonfb_info** %13, align 8
  %47 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %46, i32 0, i32 3
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  store i32 %45, i32* %52, align 4
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %14, align 4
  %54 = load %struct.radeonfb_info*, %struct.radeonfb_info** %13, align 8
  %55 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %155, label %58

58:                                               ; preds = %22
  %59 = call i32 @radeon_fifo_wait(i32 9)
  %60 = load %struct.radeonfb_info*, %struct.radeonfb_info** %13, align 8
  %61 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp eq i32 %62, 16
  br i1 %63, label %64, label %133

64:                                               ; preds = %58
  %65 = load i32, i32* %8, align 4
  %66 = mul i32 %65, 8
  store i32 %66, i32* %14, align 4
  %67 = load %struct.radeonfb_info*, %struct.radeonfb_info** %13, align 8
  %68 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 16
  br i1 %70, label %71, label %77

71:                                               ; preds = %64
  %72 = load i32, i32* %8, align 4
  %73 = icmp ugt i32 %72, 63
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %7, align 4
  br label %218

77:                                               ; preds = %71, %64
  %78 = load %struct.radeonfb_info*, %struct.radeonfb_info** %13, align 8
  %79 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, 15
  br i1 %81, label %82, label %88

82:                                               ; preds = %77
  %83 = load i32, i32* %8, align 4
  %84 = icmp ugt i32 %83, 31
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %7, align 4
  br label %218

88:                                               ; preds = %82, %77
  %89 = load %struct.radeonfb_info*, %struct.radeonfb_info** %13, align 8
  %90 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp eq i32 %91, 16
  br i1 %92, label %93, label %132

93:                                               ; preds = %88
  %94 = load i32, i32* @PALETTE_INDEX, align 4
  %95 = load i32, i32* %14, align 4
  %96 = ashr i32 %95, 1
  %97 = call i32 @OUTREG(i32 %94, i32 %96)
  %98 = load i32, i32* @PALETTE_DATA, align 4
  %99 = load %struct.radeonfb_info*, %struct.radeonfb_info** %13, align 8
  %100 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %99, i32 0, i32 3
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %100, align 8
  %102 = load i32, i32* %8, align 4
  %103 = lshr i32 %102, 1
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = shl i32 %107, 16
  %109 = load i32, i32* %10, align 4
  %110 = shl i32 %109, 8
  %111 = or i32 %108, %110
  %112 = load %struct.radeonfb_info*, %struct.radeonfb_info** %13, align 8
  %113 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %112, i32 0, i32 3
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %113, align 8
  %115 = load i32, i32* %8, align 4
  %116 = lshr i32 %115, 1
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = or i32 %111, %120
  %122 = call i32 @OUTREG(i32 %98, i32 %121)
  %123 = load %struct.radeonfb_info*, %struct.radeonfb_info** %13, align 8
  %124 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %123, i32 0, i32 3
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %124, align 8
  %126 = load i32, i32* %8, align 4
  %127 = shl i32 %126, 1
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  store i32 %131, i32* %10, align 4
  br label %132

132:                                              ; preds = %93, %88
  br label %133

133:                                              ; preds = %132, %58
  %134 = load %struct.radeonfb_info*, %struct.radeonfb_info** %13, align 8
  %135 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %136, 16
  br i1 %137, label %141, label %138

138:                                              ; preds = %133
  %139 = load i32, i32* %8, align 4
  %140 = icmp ult i32 %139, 32
  br i1 %140, label %141, label %154

141:                                              ; preds = %138, %133
  %142 = load i32, i32* @PALETTE_INDEX, align 4
  %143 = load i32, i32* %14, align 4
  %144 = call i32 @OUTREG(i32 %142, i32 %143)
  %145 = load i32, i32* @PALETTE_DATA, align 4
  %146 = load i32, i32* %9, align 4
  %147 = shl i32 %146, 16
  %148 = load i32, i32* %10, align 4
  %149 = shl i32 %148, 8
  %150 = or i32 %147, %149
  %151 = load i32, i32* %11, align 4
  %152 = or i32 %150, %151
  %153 = call i32 @OUTREG(i32 %145, i32 %152)
  br label %154

154:                                              ; preds = %141, %138
  br label %155

155:                                              ; preds = %154, %22
  %156 = load i32, i32* %8, align 4
  %157 = icmp ult i32 %156, 16
  br i1 %157, label %158, label %217

158:                                              ; preds = %155
  %159 = load %struct.radeonfb_info*, %struct.radeonfb_info** %13, align 8
  %160 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %159, i32 0, i32 2
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 0
  %163 = load i32*, i32** %162, align 8
  store i32* %163, i32** %16, align 8
  %164 = load %struct.radeonfb_info*, %struct.radeonfb_info** %13, align 8
  %165 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  switch i32 %166, label %216 [
    i32 15, label %167
    i32 16, label %179
    i32 24, label %191
    i32 32, label %203
  ]

167:                                              ; preds = %158
  %168 = load i32, i32* %8, align 4
  %169 = shl i32 %168, 10
  %170 = load i32, i32* %8, align 4
  %171 = shl i32 %170, 5
  %172 = or i32 %169, %171
  %173 = load i32, i32* %8, align 4
  %174 = or i32 %172, %173
  %175 = load i32*, i32** %16, align 8
  %176 = load i32, i32* %8, align 4
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  store i32 %174, i32* %178, align 4
  br label %216

179:                                              ; preds = %158
  %180 = load i32, i32* %8, align 4
  %181 = shl i32 %180, 11
  %182 = load i32, i32* %8, align 4
  %183 = shl i32 %182, 5
  %184 = or i32 %181, %183
  %185 = load i32, i32* %8, align 4
  %186 = or i32 %184, %185
  %187 = load i32*, i32** %16, align 8
  %188 = load i32, i32* %8, align 4
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %187, i64 %189
  store i32 %186, i32* %190, align 4
  br label %216

191:                                              ; preds = %158
  %192 = load i32, i32* %8, align 4
  %193 = shl i32 %192, 16
  %194 = load i32, i32* %8, align 4
  %195 = shl i32 %194, 8
  %196 = or i32 %193, %195
  %197 = load i32, i32* %8, align 4
  %198 = or i32 %196, %197
  %199 = load i32*, i32** %16, align 8
  %200 = load i32, i32* %8, align 4
  %201 = zext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  store i32 %198, i32* %202, align 4
  br label %216

203:                                              ; preds = %158
  %204 = load i32, i32* %8, align 4
  %205 = shl i32 %204, 8
  %206 = load i32, i32* %8, align 4
  %207 = or i32 %205, %206
  store i32 %207, i32* %15, align 4
  %208 = load i32, i32* %15, align 4
  %209 = shl i32 %208, 16
  %210 = load i32, i32* %15, align 4
  %211 = or i32 %209, %210
  %212 = load i32*, i32** %16, align 8
  %213 = load i32, i32* %8, align 4
  %214 = zext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  store i32 %211, i32* %215, align 4
  br label %216

216:                                              ; preds = %158, %203, %191, %179, %167
  br label %217

217:                                              ; preds = %216, %155
  store i32 0, i32* %7, align 4
  br label %218

218:                                              ; preds = %217, %85, %74, %19
  %219 = load i32, i32* %7, align 4
  ret i32 %219
}

declare dso_local i32 @radeon_fifo_wait(i32) #1

declare dso_local i32 @OUTREG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
