; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fb_ddc.c_fb_ddc_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fb_ddc.c_fb_ddc_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32, %struct.i2c_algo_bit_data* }
%struct.i2c_algo_bit_data = type { i32, i32 (i32, i32)*, i32 (i32, i32)*, i32, i64 (i32)* }

@I2C_CLASS_DDC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @fb_ddc_read(%struct.i2c_adapter* %0) #0 {
  %2 = alloca %struct.i2c_adapter*, align 8
  %3 = alloca %struct.i2c_algo_bit_data*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %2, align 8
  %7 = load %struct.i2c_adapter*, %struct.i2c_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %7, i32 0, i32 1
  %9 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %8, align 8
  store %struct.i2c_algo_bit_data* %9, %struct.i2c_algo_bit_data** %3, align 8
  store i8* null, i8** %4, align 8
  %10 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %3, align 8
  %11 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %10, i32 0, i32 1
  %12 = load i32 (i32, i32)*, i32 (i32, i32)** %11, align 8
  %13 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %3, align 8
  %14 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 %12(i32 %15, i32 1)
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %174, %1
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 3
  br i1 %19, label %20, label %177

20:                                               ; preds = %17
  %21 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %3, align 8
  %22 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %21, i32 0, i32 2
  %23 = load i32 (i32, i32)*, i32 (i32, i32)** %22, align 8
  %24 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %3, align 8
  %25 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 %23(i32 %26, i32 1)
  %28 = call i32 @msleep(i32 13)
  %29 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %3, align 8
  %30 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %29, i32 0, i32 1
  %31 = load i32 (i32, i32)*, i32 (i32, i32)** %30, align 8
  %32 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %3, align 8
  %33 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 %31(i32 %34, i32 1)
  %36 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %3, align 8
  %37 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %36, i32 0, i32 4
  %38 = load i64 (i32)*, i64 (i32)** %37, align 8
  %39 = icmp ne i64 (i32)* %38, null
  br i1 %39, label %40, label %64

40:                                               ; preds = %20
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %56, %40
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %42, 5
  br i1 %43, label %44, label %59

44:                                               ; preds = %41
  %45 = call i32 @msleep(i32 10)
  %46 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %3, align 8
  %47 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %46, i32 0, i32 4
  %48 = load i64 (i32)*, i64 (i32)** %47, align 8
  %49 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %3, align 8
  %50 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i64 %48(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %44
  br label %59

55:                                               ; preds = %44
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %41

59:                                               ; preds = %54, %41
  %60 = load i32, i32* %6, align 4
  %61 = icmp eq i32 %60, 5
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  br label %174

63:                                               ; preds = %59
  br label %69

64:                                               ; preds = %20
  %65 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %3, align 8
  %66 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @udelay(i32 %67)
  br label %69

69:                                               ; preds = %64, %63
  %70 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %3, align 8
  %71 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %70, i32 0, i32 2
  %72 = load i32 (i32, i32)*, i32 (i32, i32)** %71, align 8
  %73 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %3, align 8
  %74 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 %72(i32 %75, i32 0)
  %77 = call i32 @msleep(i32 15)
  %78 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %3, align 8
  %79 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %78, i32 0, i32 1
  %80 = load i32 (i32, i32)*, i32 (i32, i32)** %79, align 8
  %81 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %3, align 8
  %82 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 %80(i32 %83, i32 0)
  %85 = call i32 @msleep(i32 15)
  %86 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %3, align 8
  %87 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %86, i32 0, i32 2
  %88 = load i32 (i32, i32)*, i32 (i32, i32)** %87, align 8
  %89 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %3, align 8
  %90 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 %88(i32 %91, i32 1)
  %93 = call i32 @msleep(i32 15)
  %94 = load %struct.i2c_adapter*, %struct.i2c_adapter** %2, align 8
  %95 = call i8* @fb_do_probe_ddc_edid(%struct.i2c_adapter* %94)
  store i8* %95, i8** %4, align 8
  %96 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %3, align 8
  %97 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %96, i32 0, i32 2
  %98 = load i32 (i32, i32)*, i32 (i32, i32)** %97, align 8
  %99 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %3, align 8
  %100 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 %98(i32 %101, i32 0)
  %103 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %3, align 8
  %104 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %103, i32 0, i32 1
  %105 = load i32 (i32, i32)*, i32 (i32, i32)** %104, align 8
  %106 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %3, align 8
  %107 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 %105(i32 %108, i32 0)
  %110 = call i32 @msleep(i32 15)
  %111 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %3, align 8
  %112 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %111, i32 0, i32 1
  %113 = load i32 (i32, i32)*, i32 (i32, i32)** %112, align 8
  %114 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %3, align 8
  %115 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 %113(i32 %116, i32 1)
  %118 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %3, align 8
  %119 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %118, i32 0, i32 4
  %120 = load i64 (i32)*, i64 (i32)** %119, align 8
  %121 = icmp ne i64 (i32)* %120, null
  br i1 %121, label %122, label %142

122:                                              ; preds = %69
  store i32 0, i32* %6, align 4
  br label %123

123:                                              ; preds = %138, %122
  %124 = load i32, i32* %6, align 4
  %125 = icmp slt i32 %124, 10
  br i1 %125, label %126, label %141

126:                                              ; preds = %123
  %127 = call i32 @msleep(i32 10)
  %128 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %3, align 8
  %129 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %128, i32 0, i32 4
  %130 = load i64 (i32)*, i64 (i32)** %129, align 8
  %131 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %3, align 8
  %132 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i64 %130(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %126
  br label %141

137:                                              ; preds = %126
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %6, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %6, align 4
  br label %123

141:                                              ; preds = %136, %123
  br label %147

142:                                              ; preds = %69
  %143 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %3, align 8
  %144 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @udelay(i32 %145)
  br label %147

147:                                              ; preds = %142, %141
  %148 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %3, align 8
  %149 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %148, i32 0, i32 2
  %150 = load i32 (i32, i32)*, i32 (i32, i32)** %149, align 8
  %151 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %3, align 8
  %152 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = call i32 %150(i32 %153, i32 1)
  %155 = call i32 @msleep(i32 15)
  %156 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %3, align 8
  %157 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %156, i32 0, i32 1
  %158 = load i32 (i32, i32)*, i32 (i32, i32)** %157, align 8
  %159 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %3, align 8
  %160 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i32 %158(i32 %161, i32 0)
  %163 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %3, align 8
  %164 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %163, i32 0, i32 2
  %165 = load i32 (i32, i32)*, i32 (i32, i32)** %164, align 8
  %166 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %3, align 8
  %167 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = call i32 %165(i32 %168, i32 0)
  %170 = load i8*, i8** %4, align 8
  %171 = icmp ne i8* %170, null
  br i1 %171, label %172, label %173

172:                                              ; preds = %147
  br label %177

173:                                              ; preds = %147
  br label %174

174:                                              ; preds = %173, %62
  %175 = load i32, i32* %5, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %5, align 4
  br label %17

177:                                              ; preds = %172, %17
  %178 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %3, align 8
  %179 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %178, i32 0, i32 2
  %180 = load i32 (i32, i32)*, i32 (i32, i32)** %179, align 8
  %181 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %3, align 8
  %182 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = call i32 %180(i32 %183, i32 1)
  %185 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %3, align 8
  %186 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %185, i32 0, i32 1
  %187 = load i32 (i32, i32)*, i32 (i32, i32)** %186, align 8
  %188 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %3, align 8
  %189 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = call i32 %187(i32 %190, i32 1)
  %192 = load i32, i32* @I2C_CLASS_DDC, align 4
  %193 = load %struct.i2c_adapter*, %struct.i2c_adapter** %2, align 8
  %194 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = or i32 %195, %192
  store i32 %196, i32* %194, align 8
  %197 = load i8*, i8** %4, align 8
  ret i8* %197
}

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i8* @fb_do_probe_ddc_edid(%struct.i2c_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
