; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_via_modesetting.c_via_set_secondary_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_via_modesetting.c_via_set_secondary_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.via_display_timing = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@VIACR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @via_set_secondary_timing(%struct.via_display_timing* %0) #0 {
  %2 = alloca %struct.via_display_timing*, align 8
  %3 = alloca %struct.via_display_timing, align 4
  store %struct.via_display_timing* %0, %struct.via_display_timing** %2, align 8
  %4 = load %struct.via_display_timing*, %struct.via_display_timing** %2, align 8
  %5 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = sub nsw i32 %6, 1
  %8 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %3, i32 0, i32 0
  store i32 %7, i32* %8, align 4
  %9 = load %struct.via_display_timing*, %struct.via_display_timing** %2, align 8
  %10 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = sub nsw i32 %11, 1
  %13 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %3, i32 0, i32 1
  store i32 %12, i32* %13, align 4
  %14 = load %struct.via_display_timing*, %struct.via_display_timing** %2, align 8
  %15 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = sub nsw i32 %16, 1
  %18 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %3, i32 0, i32 2
  store i32 %17, i32* %18, align 4
  %19 = load %struct.via_display_timing*, %struct.via_display_timing** %2, align 8
  %20 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 %21, 1
  %23 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %3, i32 0, i32 3
  store i32 %22, i32* %23, align 4
  %24 = load %struct.via_display_timing*, %struct.via_display_timing** %2, align 8
  %25 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %26, 1
  %28 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %3, i32 0, i32 4
  store i32 %27, i32* %28, align 4
  %29 = load %struct.via_display_timing*, %struct.via_display_timing** %2, align 8
  %30 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %31, 1
  %33 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %3, i32 0, i32 5
  store i32 %32, i32* %33, align 4
  %34 = load %struct.via_display_timing*, %struct.via_display_timing** %2, align 8
  %35 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 4
  %37 = sub nsw i32 %36, 1
  %38 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %3, i32 0, i32 6
  store i32 %37, i32* %38, align 4
  %39 = load %struct.via_display_timing*, %struct.via_display_timing** %2, align 8
  %40 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %39, i32 0, i32 7
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %41, 1
  %43 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %3, i32 0, i32 7
  store i32 %42, i32* %43, align 4
  %44 = load %struct.via_display_timing*, %struct.via_display_timing** %2, align 8
  %45 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %44, i32 0, i32 8
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 %46, 1
  %48 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %3, i32 0, i32 8
  store i32 %47, i32* %48, align 4
  %49 = load %struct.via_display_timing*, %struct.via_display_timing** %2, align 8
  %50 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %49, i32 0, i32 9
  %51 = load i32, i32* %50, align 4
  %52 = sub nsw i32 %51, 1
  %53 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %3, i32 0, i32 9
  store i32 %52, i32* %53, align 4
  %54 = load %struct.via_display_timing*, %struct.via_display_timing** %2, align 8
  %55 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %54, i32 0, i32 10
  %56 = load i32, i32* %55, align 4
  %57 = sub nsw i32 %56, 1
  %58 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %3, i32 0, i32 10
  store i32 %57, i32* %58, align 4
  %59 = load %struct.via_display_timing*, %struct.via_display_timing** %2, align 8
  %60 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %59, i32 0, i32 11
  %61 = load i32, i32* %60, align 4
  %62 = sub nsw i32 %61, 1
  %63 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %3, i32 0, i32 11
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* @VIACR, align 4
  %65 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %3, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, 255
  %68 = call i32 @via_write_reg(i32 %64, i32 80, i32 %67)
  %69 = load i32, i32* @VIACR, align 4
  %70 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %3, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, 255
  %73 = call i32 @via_write_reg(i32 %69, i32 81, i32 %72)
  %74 = load i32, i32* @VIACR, align 4
  %75 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %3, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, 255
  %78 = call i32 @via_write_reg(i32 %74, i32 82, i32 %77)
  %79 = load i32, i32* @VIACR, align 4
  %80 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %3, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, 255
  %83 = call i32 @via_write_reg(i32 %79, i32 83, i32 %82)
  %84 = load i32, i32* @VIACR, align 4
  %85 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %3, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = ashr i32 %86, 8
  %88 = and i32 %87, 7
  %89 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %3, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = ashr i32 %90, 5
  %92 = and i32 %91, 56
  %93 = or i32 %88, %92
  %94 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %3, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = ashr i32 %95, 2
  %97 = and i32 %96, 192
  %98 = or i32 %93, %97
  %99 = call i32 @via_write_reg(i32 %84, i32 84, i32 %98)
  %100 = load i32, i32* @VIACR, align 4
  %101 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %3, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = ashr i32 %102, 8
  %104 = and i32 %103, 15
  %105 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %3, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = ashr i32 %106, 4
  %108 = and i32 %107, 112
  %109 = or i32 %104, %108
  %110 = call i32 @via_write_reg_mask(i32 %100, i32 85, i32 %109, i32 127)
  %111 = load i32, i32* @VIACR, align 4
  %112 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %3, i32 0, i32 4
  %113 = load i32, i32* %112, align 4
  %114 = and i32 %113, 255
  %115 = call i32 @via_write_reg(i32 %111, i32 86, i32 %114)
  %116 = load i32, i32* @VIACR, align 4
  %117 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %3, i32 0, i32 5
  %118 = load i32, i32* %117, align 4
  %119 = and i32 %118, 255
  %120 = call i32 @via_write_reg(i32 %116, i32 87, i32 %119)
  %121 = load i32, i32* @VIACR, align 4
  %122 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %3, i32 0, i32 6
  %123 = load i32, i32* %122, align 4
  %124 = and i32 %123, 255
  %125 = call i32 @via_write_reg(i32 %121, i32 88, i32 %124)
  %126 = load i32, i32* @VIACR, align 4
  %127 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %3, i32 0, i32 7
  %128 = load i32, i32* %127, align 4
  %129 = and i32 %128, 255
  %130 = call i32 @via_write_reg(i32 %126, i32 89, i32 %129)
  %131 = load i32, i32* @VIACR, align 4
  %132 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %3, i32 0, i32 8
  %133 = load i32, i32* %132, align 4
  %134 = and i32 %133, 255
  %135 = call i32 @via_write_reg(i32 %131, i32 90, i32 %134)
  %136 = load i32, i32* @VIACR, align 4
  %137 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %3, i32 0, i32 9
  %138 = load i32, i32* %137, align 4
  %139 = and i32 %138, 255
  %140 = call i32 @via_write_reg(i32 %136, i32 91, i32 %139)
  %141 = load i32, i32* @VIACR, align 4
  %142 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %3, i32 0, i32 8
  %143 = load i32, i32* %142, align 4
  %144 = ashr i32 %143, 8
  %145 = and i32 %144, 7
  %146 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %3, i32 0, i32 9
  %147 = load i32, i32* %146, align 4
  %148 = ashr i32 %147, 5
  %149 = and i32 %148, 56
  %150 = or i32 %145, %149
  %151 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %3, i32 0, i32 5
  %152 = load i32, i32* %151, align 4
  %153 = ashr i32 %152, 2
  %154 = and i32 %153, 64
  %155 = or i32 %150, %154
  %156 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %3, i32 0, i32 4
  %157 = load i32, i32* %156, align 4
  %158 = ashr i32 %157, 3
  %159 = and i32 %158, 128
  %160 = or i32 %155, %159
  %161 = call i32 @via_write_reg(i32 %141, i32 92, i32 %160)
  %162 = load i32, i32* @VIACR, align 4
  %163 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %3, i32 0, i32 6
  %164 = load i32, i32* %163, align 4
  %165 = ashr i32 %164, 8
  %166 = and i32 %165, 7
  %167 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %3, i32 0, i32 7
  %168 = load i32, i32* %167, align 4
  %169 = ashr i32 %168, 5
  %170 = and i32 %169, 56
  %171 = or i32 %166, %170
  %172 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %3, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = ashr i32 %173, 5
  %175 = and i32 %174, 64
  %176 = or i32 %171, %175
  %177 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %3, i32 0, i32 4
  %178 = load i32, i32* %177, align 4
  %179 = ashr i32 %178, 4
  %180 = and i32 %179, 128
  %181 = or i32 %176, %180
  %182 = call i32 @via_write_reg(i32 %162, i32 93, i32 %181)
  %183 = load i32, i32* @VIACR, align 4
  %184 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %3, i32 0, i32 10
  %185 = load i32, i32* %184, align 4
  %186 = and i32 %185, 255
  %187 = call i32 @via_write_reg(i32 %183, i32 94, i32 %186)
  %188 = load i32, i32* @VIACR, align 4
  %189 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %3, i32 0, i32 11
  %190 = load i32, i32* %189, align 4
  %191 = and i32 %190, 31
  %192 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %3, i32 0, i32 10
  %193 = load i32, i32* %192, align 4
  %194 = ashr i32 %193, 3
  %195 = and i32 %194, 224
  %196 = or i32 %191, %195
  %197 = call i32 @via_write_reg(i32 %188, i32 95, i32 %196)
  ret void
}

declare dso_local i32 @via_write_reg(i32, i32, i32) #1

declare dso_local i32 @via_write_reg_mask(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
