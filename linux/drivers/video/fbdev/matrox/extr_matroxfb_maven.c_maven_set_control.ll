; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/matrox/extr_matroxfb_maven.c_maven_set_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/matrox/extr_matroxfb_maven.c_maven_set_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }
%struct.maven_data = type { i32 }
%struct.v4l2_control = type { i32, i64 }
%struct.maven_gamma = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }

@EINVAL = common dso_local global i32 0, align 4
@maven_controls = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.maven_data*, %struct.v4l2_control*)* @maven_set_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @maven_set_control(%struct.maven_data* %0, %struct.v4l2_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.maven_data*, align 8
  %5 = alloca %struct.v4l2_control*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.maven_gamma*, align 8
  %10 = alloca i8, align 1
  store %struct.maven_data* %0, %struct.maven_data** %4, align 8
  store %struct.v4l2_control* %1, %struct.v4l2_control** %5, align 8
  %11 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %12 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @get_ctrl_id(i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %220

20:                                               ; preds = %2
  %21 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %22 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.maven_data*, %struct.maven_data** %4, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i64* @get_ctrl_ptr(%struct.maven_data* %24, i32 %25)
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %23, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %220

30:                                               ; preds = %20
  %31 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %32 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @maven_controls, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %33, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %30
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %220

45:                                               ; preds = %30
  %46 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %47 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** @maven_controls, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp slt i64 %48, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %45
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %220

60:                                               ; preds = %45
  %61 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %62 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.maven_data*, %struct.maven_data** %4, align 8
  %65 = load i32, i32* %6, align 4
  %66 = call i64* @get_ctrl_ptr(%struct.maven_data* %64, i32 %65)
  store i64 %63, i64* %66, align 8
  %67 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %68 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  switch i32 %69, label %219 [
    i32 132, label %70
    i32 131, label %70
    i32 128, label %95
    i32 129, label %112
    i32 130, label %121
    i32 133, label %187
    i32 134, label %212
  ]

70:                                               ; preds = %60, %60
  %71 = load %struct.maven_data*, %struct.maven_data** %4, align 8
  %72 = call i32 @maven_compute_bwlevel(%struct.maven_data* %71, i32* %7, i32* %8)
  %73 = load i32, i32* %7, align 4
  %74 = ashr i32 %73, 2
  %75 = load i32, i32* %7, align 4
  %76 = and i32 %75, 3
  %77 = shl i32 %76, 8
  %78 = or i32 %74, %77
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %8, align 4
  %80 = ashr i32 %79, 2
  %81 = load i32, i32* %8, align 4
  %82 = and i32 %81, 3
  %83 = shl i32 %82, 8
  %84 = or i32 %80, %83
  store i32 %84, i32* %8, align 4
  %85 = load %struct.maven_data*, %struct.maven_data** %4, align 8
  %86 = getelementptr inbounds %struct.maven_data, %struct.maven_data* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @maven_set_reg_pair(i32 %87, i32 14, i32 %88)
  %90 = load %struct.maven_data*, %struct.maven_data** %4, align 8
  %91 = getelementptr inbounds %struct.maven_data, %struct.maven_data* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @maven_set_reg_pair(i32 %92, i32 30, i32 %93)
  br label %219

95:                                               ; preds = %60
  %96 = load %struct.maven_data*, %struct.maven_data** %4, align 8
  %97 = getelementptr inbounds %struct.maven_data, %struct.maven_data* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %100 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = trunc i64 %101 to i8
  %103 = call i32 @maven_set_reg(i32 %98, i32 32, i8 zeroext %102)
  %104 = load %struct.maven_data*, %struct.maven_data** %4, align 8
  %105 = getelementptr inbounds %struct.maven_data, %struct.maven_data* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %108 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = trunc i64 %109 to i8
  %111 = call i32 @maven_set_reg(i32 %106, i32 34, i8 zeroext %110)
  br label %219

112:                                              ; preds = %60
  %113 = load %struct.maven_data*, %struct.maven_data** %4, align 8
  %114 = getelementptr inbounds %struct.maven_data, %struct.maven_data* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %117 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = trunc i64 %118 to i8
  %120 = call i32 @maven_set_reg(i32 %115, i32 37, i8 zeroext %119)
  br label %219

121:                                              ; preds = %60
  %122 = load %struct.maven_data*, %struct.maven_data** %4, align 8
  %123 = call %struct.maven_gamma* @maven_compute_gamma(%struct.maven_data* %122)
  store %struct.maven_gamma* %123, %struct.maven_gamma** %9, align 8
  %124 = load %struct.maven_data*, %struct.maven_data** %4, align 8
  %125 = getelementptr inbounds %struct.maven_data, %struct.maven_data* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.maven_gamma*, %struct.maven_gamma** %9, align 8
  %128 = getelementptr inbounds %struct.maven_gamma, %struct.maven_gamma* %127, i32 0, i32 0
  %129 = load i8, i8* %128, align 1
  %130 = call i32 @maven_set_reg(i32 %126, i32 131, i8 zeroext %129)
  %131 = load %struct.maven_data*, %struct.maven_data** %4, align 8
  %132 = getelementptr inbounds %struct.maven_data, %struct.maven_data* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.maven_gamma*, %struct.maven_gamma** %9, align 8
  %135 = getelementptr inbounds %struct.maven_gamma, %struct.maven_gamma* %134, i32 0, i32 1
  %136 = load i8, i8* %135, align 1
  %137 = call i32 @maven_set_reg(i32 %133, i32 132, i8 zeroext %136)
  %138 = load %struct.maven_data*, %struct.maven_data** %4, align 8
  %139 = getelementptr inbounds %struct.maven_data, %struct.maven_data* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.maven_gamma*, %struct.maven_gamma** %9, align 8
  %142 = getelementptr inbounds %struct.maven_gamma, %struct.maven_gamma* %141, i32 0, i32 2
  %143 = load i8, i8* %142, align 1
  %144 = call i32 @maven_set_reg(i32 %140, i32 133, i8 zeroext %143)
  %145 = load %struct.maven_data*, %struct.maven_data** %4, align 8
  %146 = getelementptr inbounds %struct.maven_data, %struct.maven_data* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.maven_gamma*, %struct.maven_gamma** %9, align 8
  %149 = getelementptr inbounds %struct.maven_gamma, %struct.maven_gamma* %148, i32 0, i32 3
  %150 = load i8, i8* %149, align 1
  %151 = call i32 @maven_set_reg(i32 %147, i32 134, i8 zeroext %150)
  %152 = load %struct.maven_data*, %struct.maven_data** %4, align 8
  %153 = getelementptr inbounds %struct.maven_data, %struct.maven_data* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.maven_gamma*, %struct.maven_gamma** %9, align 8
  %156 = getelementptr inbounds %struct.maven_gamma, %struct.maven_gamma* %155, i32 0, i32 4
  %157 = load i8, i8* %156, align 1
  %158 = call i32 @maven_set_reg(i32 %154, i32 135, i8 zeroext %157)
  %159 = load %struct.maven_data*, %struct.maven_data** %4, align 8
  %160 = getelementptr inbounds %struct.maven_data, %struct.maven_data* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.maven_gamma*, %struct.maven_gamma** %9, align 8
  %163 = getelementptr inbounds %struct.maven_gamma, %struct.maven_gamma* %162, i32 0, i32 5
  %164 = load i8, i8* %163, align 1
  %165 = call i32 @maven_set_reg(i32 %161, i32 136, i8 zeroext %164)
  %166 = load %struct.maven_data*, %struct.maven_data** %4, align 8
  %167 = getelementptr inbounds %struct.maven_data, %struct.maven_data* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.maven_gamma*, %struct.maven_gamma** %9, align 8
  %170 = getelementptr inbounds %struct.maven_gamma, %struct.maven_gamma* %169, i32 0, i32 6
  %171 = load i8, i8* %170, align 1
  %172 = call i32 @maven_set_reg(i32 %168, i32 137, i8 zeroext %171)
  %173 = load %struct.maven_data*, %struct.maven_data** %4, align 8
  %174 = getelementptr inbounds %struct.maven_data, %struct.maven_data* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.maven_gamma*, %struct.maven_gamma** %9, align 8
  %177 = getelementptr inbounds %struct.maven_gamma, %struct.maven_gamma* %176, i32 0, i32 7
  %178 = load i8, i8* %177, align 1
  %179 = call i32 @maven_set_reg(i32 %175, i32 138, i8 zeroext %178)
  %180 = load %struct.maven_data*, %struct.maven_data** %4, align 8
  %181 = getelementptr inbounds %struct.maven_data, %struct.maven_data* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.maven_gamma*, %struct.maven_gamma** %9, align 8
  %184 = getelementptr inbounds %struct.maven_gamma, %struct.maven_gamma* %183, i32 0, i32 8
  %185 = load i8, i8* %184, align 1
  %186 = call i32 @maven_set_reg(i32 %182, i32 139, i8 zeroext %185)
  br label %219

187:                                              ; preds = %60
  %188 = load %struct.maven_data*, %struct.maven_data** %4, align 8
  %189 = getelementptr inbounds %struct.maven_data, %struct.maven_data* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = call zeroext i8 @maven_get_reg(i32 %190, i32 141)
  store i8 %191, i8* %10, align 1
  %192 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %193 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %201

196:                                              ; preds = %187
  %197 = load i8, i8* %10, align 1
  %198 = zext i8 %197 to i32
  %199 = or i32 %198, 16
  %200 = trunc i32 %199 to i8
  store i8 %200, i8* %10, align 1
  br label %206

201:                                              ; preds = %187
  %202 = load i8, i8* %10, align 1
  %203 = zext i8 %202 to i32
  %204 = and i32 %203, -17
  %205 = trunc i32 %204 to i8
  store i8 %205, i8* %10, align 1
  br label %206

206:                                              ; preds = %201, %196
  %207 = load %struct.maven_data*, %struct.maven_data** %4, align 8
  %208 = getelementptr inbounds %struct.maven_data, %struct.maven_data* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = load i8, i8* %10, align 1
  %211 = call i32 @maven_set_reg(i32 %209, i32 141, i8 zeroext %210)
  br label %219

212:                                              ; preds = %60
  %213 = load %struct.maven_data*, %struct.maven_data** %4, align 8
  %214 = getelementptr inbounds %struct.maven_data, %struct.maven_data* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.maven_data*, %struct.maven_data** %4, align 8
  %217 = call zeroext i8 @maven_compute_deflicker(%struct.maven_data* %216)
  %218 = call i32 @maven_set_reg(i32 %215, i32 147, i8 zeroext %217)
  br label %219

219:                                              ; preds = %60, %212, %206, %121, %112, %95, %70
  store i32 0, i32* %3, align 4
  br label %220

220:                                              ; preds = %219, %57, %42, %29, %17
  %221 = load i32, i32* %3, align 4
  ret i32 %221
}

declare dso_local i32 @get_ctrl_id(i32) #1

declare dso_local i64* @get_ctrl_ptr(%struct.maven_data*, i32) #1

declare dso_local i32 @maven_compute_bwlevel(%struct.maven_data*, i32*, i32*) #1

declare dso_local i32 @maven_set_reg_pair(i32, i32, i32) #1

declare dso_local i32 @maven_set_reg(i32, i32, i8 zeroext) #1

declare dso_local %struct.maven_gamma* @maven_compute_gamma(%struct.maven_data*) #1

declare dso_local zeroext i8 @maven_get_reg(i32, i32) #1

declare dso_local zeroext i8 @maven_compute_deflicker(%struct.maven_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
