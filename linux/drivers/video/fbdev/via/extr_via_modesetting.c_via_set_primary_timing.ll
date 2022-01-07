; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_via_modesetting.c_via_set_primary_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_via_modesetting.c_via_set_primary_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.via_display_timing = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@VIACR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @via_set_primary_timing(%struct.via_display_timing* %0) #0 {
  %2 = alloca %struct.via_display_timing*, align 8
  %3 = alloca %struct.via_display_timing, align 4
  store %struct.via_display_timing* %0, %struct.via_display_timing** %2, align 8
  %4 = load %struct.via_display_timing*, %struct.via_display_timing** %2, align 8
  %5 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = sdiv i32 %6, 8
  %8 = sub nsw i32 %7, 5
  %9 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %3, i32 0, i32 0
  store i32 %8, i32* %9, align 4
  %10 = load %struct.via_display_timing*, %struct.via_display_timing** %2, align 8
  %11 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = sdiv i32 %12, 8
  %14 = sub nsw i32 %13, 1
  %15 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %3, i32 0, i32 1
  store i32 %14, i32* %15, align 4
  %16 = load %struct.via_display_timing*, %struct.via_display_timing** %2, align 8
  %17 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = sdiv i32 %18, 8
  %20 = sub nsw i32 %19, 1
  %21 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %3, i32 0, i32 2
  store i32 %20, i32* %21, align 4
  %22 = load %struct.via_display_timing*, %struct.via_display_timing** %2, align 8
  %23 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = sdiv i32 %24, 8
  %26 = sub nsw i32 %25, 1
  %27 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %3, i32 0, i32 3
  store i32 %26, i32* %27, align 4
  %28 = load %struct.via_display_timing*, %struct.via_display_timing** %2, align 8
  %29 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = sdiv i32 %30, 8
  %32 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %3, i32 0, i32 4
  store i32 %31, i32* %32, align 4
  %33 = load %struct.via_display_timing*, %struct.via_display_timing** %2, align 8
  %34 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = sdiv i32 %35, 8
  %37 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %3, i32 0, i32 5
  store i32 %36, i32* %37, align 4
  %38 = load %struct.via_display_timing*, %struct.via_display_timing** %2, align 8
  %39 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %40, 2
  %42 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %3, i32 0, i32 6
  store i32 %41, i32* %42, align 4
  %43 = load %struct.via_display_timing*, %struct.via_display_timing** %2, align 8
  %44 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %43, i32 0, i32 7
  %45 = load i32, i32* %44, align 4
  %46 = sub nsw i32 %45, 1
  %47 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %3, i32 0, i32 7
  store i32 %46, i32* %47, align 4
  %48 = load %struct.via_display_timing*, %struct.via_display_timing** %2, align 8
  %49 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %48, i32 0, i32 8
  %50 = load i32, i32* %49, align 4
  %51 = sub nsw i32 %50, 1
  %52 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %3, i32 0, i32 8
  store i32 %51, i32* %52, align 4
  %53 = load %struct.via_display_timing*, %struct.via_display_timing** %2, align 8
  %54 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %53, i32 0, i32 9
  %55 = load i32, i32* %54, align 4
  %56 = sub nsw i32 %55, 1
  %57 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %3, i32 0, i32 9
  store i32 %56, i32* %57, align 4
  %58 = load %struct.via_display_timing*, %struct.via_display_timing** %2, align 8
  %59 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %58, i32 0, i32 10
  %60 = load i32, i32* %59, align 4
  %61 = sub nsw i32 %60, 1
  %62 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %3, i32 0, i32 10
  store i32 %61, i32* %62, align 4
  %63 = load %struct.via_display_timing*, %struct.via_display_timing** %2, align 8
  %64 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %63, i32 0, i32 11
  %65 = load i32, i32* %64, align 4
  %66 = sub nsw i32 %65, 1
  %67 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %3, i32 0, i32 11
  store i32 %66, i32* %67, align 4
  %68 = load i32, i32* @VIACR, align 4
  %69 = call i32 @via_write_reg_mask(i32 %68, i32 17, i32 0, i32 128)
  %70 = load i32, i32* @VIACR, align 4
  %71 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %3, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, 255
  %74 = call i32 @via_write_reg(i32 %70, i32 0, i32 %73)
  %75 = load i32, i32* @VIACR, align 4
  %76 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %3, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, 255
  %79 = call i32 @via_write_reg(i32 %75, i32 1, i32 %78)
  %80 = load i32, i32* @VIACR, align 4
  %81 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %3, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, 255
  %84 = call i32 @via_write_reg(i32 %80, i32 2, i32 %83)
  %85 = load i32, i32* @VIACR, align 4
  %86 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %3, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, 31
  %89 = call i32 @via_write_reg_mask(i32 %85, i32 3, i32 %88, i32 31)
  %90 = load i32, i32* @VIACR, align 4
  %91 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %3, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, 255
  %94 = call i32 @via_write_reg(i32 %90, i32 4, i32 %93)
  %95 = load i32, i32* @VIACR, align 4
  %96 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %3, i32 0, i32 5
  %97 = load i32, i32* %96, align 4
  %98 = and i32 %97, 31
  %99 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %3, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = shl i32 %100, 2
  %102 = and i32 %101, 128
  %103 = or i32 %98, %102
  %104 = call i32 @via_write_reg_mask(i32 %95, i32 5, i32 %103, i32 159)
  %105 = load i32, i32* @VIACR, align 4
  %106 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %3, i32 0, i32 6
  %107 = load i32, i32* %106, align 4
  %108 = and i32 %107, 255
  %109 = call i32 @via_write_reg(i32 %105, i32 6, i32 %108)
  %110 = load i32, i32* @VIACR, align 4
  %111 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %3, i32 0, i32 6
  %112 = load i32, i32* %111, align 4
  %113 = ashr i32 %112, 8
  %114 = and i32 %113, 1
  %115 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %3, i32 0, i32 7
  %116 = load i32, i32* %115, align 4
  %117 = ashr i32 %116, 7
  %118 = and i32 %117, 2
  %119 = or i32 %114, %118
  %120 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %3, i32 0, i32 10
  %121 = load i32, i32* %120, align 4
  %122 = ashr i32 %121, 6
  %123 = and i32 %122, 4
  %124 = or i32 %119, %123
  %125 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %3, i32 0, i32 8
  %126 = load i32, i32* %125, align 4
  %127 = ashr i32 %126, 5
  %128 = and i32 %127, 8
  %129 = or i32 %124, %128
  %130 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %3, i32 0, i32 6
  %131 = load i32, i32* %130, align 4
  %132 = ashr i32 %131, 4
  %133 = and i32 %132, 32
  %134 = or i32 %129, %133
  %135 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %3, i32 0, i32 7
  %136 = load i32, i32* %135, align 4
  %137 = ashr i32 %136, 3
  %138 = and i32 %137, 64
  %139 = or i32 %134, %138
  %140 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %3, i32 0, i32 10
  %141 = load i32, i32* %140, align 4
  %142 = ashr i32 %141, 2
  %143 = and i32 %142, 128
  %144 = or i32 %139, %143
  %145 = call i32 @via_write_reg_mask(i32 %110, i32 7, i32 %144, i32 239)
  %146 = load i32, i32* @VIACR, align 4
  %147 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %3, i32 0, i32 8
  %148 = load i32, i32* %147, align 4
  %149 = ashr i32 %148, 4
  %150 = and i32 %149, 32
  %151 = call i32 @via_write_reg_mask(i32 %146, i32 9, i32 %150, i32 32)
  %152 = load i32, i32* @VIACR, align 4
  %153 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %3, i32 0, i32 10
  %154 = load i32, i32* %153, align 4
  %155 = and i32 %154, 255
  %156 = call i32 @via_write_reg(i32 %152, i32 16, i32 %155)
  %157 = load i32, i32* @VIACR, align 4
  %158 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %3, i32 0, i32 11
  %159 = load i32, i32* %158, align 4
  %160 = and i32 %159, 15
  %161 = call i32 @via_write_reg_mask(i32 %157, i32 17, i32 %160, i32 15)
  %162 = load i32, i32* @VIACR, align 4
  %163 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %3, i32 0, i32 7
  %164 = load i32, i32* %163, align 4
  %165 = and i32 %164, 255
  %166 = call i32 @via_write_reg(i32 %162, i32 18, i32 %165)
  %167 = load i32, i32* @VIACR, align 4
  %168 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %3, i32 0, i32 8
  %169 = load i32, i32* %168, align 4
  %170 = and i32 %169, 255
  %171 = call i32 @via_write_reg(i32 %167, i32 21, i32 %170)
  %172 = load i32, i32* @VIACR, align 4
  %173 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %3, i32 0, i32 9
  %174 = load i32, i32* %173, align 4
  %175 = and i32 %174, 255
  %176 = call i32 @via_write_reg(i32 %172, i32 22, i32 %175)
  %177 = load i32, i32* @VIACR, align 4
  %178 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %3, i32 0, i32 4
  %179 = load i32, i32* %178, align 4
  %180 = ashr i32 %179, 4
  %181 = and i32 %180, 16
  %182 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %3, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = ashr i32 %183, 1
  %185 = and i32 %184, 32
  %186 = or i32 %181, %185
  %187 = call i32 @via_write_reg_mask(i32 %177, i32 51, i32 %186, i32 48)
  %188 = load i32, i32* @VIACR, align 4
  %189 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %3, i32 0, i32 6
  %190 = load i32, i32* %189, align 4
  %191 = ashr i32 %190, 10
  %192 = and i32 %191, 1
  %193 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %3, i32 0, i32 10
  %194 = load i32, i32* %193, align 4
  %195 = ashr i32 %194, 9
  %196 = and i32 %195, 2
  %197 = or i32 %192, %196
  %198 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %3, i32 0, i32 7
  %199 = load i32, i32* %198, align 4
  %200 = ashr i32 %199, 8
  %201 = and i32 %200, 4
  %202 = or i32 %197, %201
  %203 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %3, i32 0, i32 8
  %204 = load i32, i32* %203, align 4
  %205 = ashr i32 %204, 7
  %206 = and i32 %205, 8
  %207 = or i32 %202, %206
  %208 = call i32 @via_write_reg_mask(i32 %188, i32 53, i32 %207, i32 15)
  %209 = load i32, i32* @VIACR, align 4
  %210 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %3, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = ashr i32 %211, 5
  %213 = and i32 %212, 8
  %214 = call i32 @via_write_reg_mask(i32 %209, i32 54, i32 %213, i32 8)
  %215 = load i32, i32* @VIACR, align 4
  %216 = call i32 @via_write_reg_mask(i32 %215, i32 17, i32 128, i32 128)
  %217 = load i32, i32* @VIACR, align 4
  %218 = call i32 @via_write_reg_mask(i32 %217, i32 23, i32 0, i32 128)
  %219 = load i32, i32* @VIACR, align 4
  %220 = call i32 @via_write_reg_mask(i32 %219, i32 23, i32 128, i32 128)
  ret void
}

declare dso_local i32 @via_write_reg_mask(i32, i32, i32, i32) #1

declare dso_local i32 @via_write_reg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
