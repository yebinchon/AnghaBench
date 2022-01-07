; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_label.c_nd_label_write_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_label.c_nd_label_write_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvdimm_drvdata = type { i32, i32 }
%struct.nd_namespace_index = type { i32, i8*, i8*, i32*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32 }

@ND_NSINDEX_INIT = common dso_local global i64 0, align 8
@NSINDEX_SIGNATURE = common dso_local global i32 0, align 4
@NSINDEX_SIG_LEN = common dso_local global i32 0, align 4
@BITS_PER_LONG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvdimm_drvdata*, i32, i32, i64)* @nd_label_write_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nd_label_write_index(%struct.nvdimm_drvdata* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvdimm_drvdata*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.nd_namespace_index*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.nvdimm_drvdata* %0, %struct.nvdimm_drvdata** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %19 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call %struct.nd_namespace_index* @to_namespace_index(%struct.nvdimm_drvdata* %19, i32 %20)
  store %struct.nd_namespace_index* %21, %struct.nd_namespace_index** %10, align 8
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* @ND_NSINDEX_INIT, align 8
  %24 = and i64 %22, %23
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %6, align 8
  %28 = call i32 @nvdimm_num_label_slots(%struct.nvdimm_drvdata* %27)
  store i32 %28, i32* %13, align 4
  br label %34

29:                                               ; preds = %4
  %30 = load %struct.nd_namespace_index*, %struct.nd_namespace_index** %10, align 8
  %31 = getelementptr inbounds %struct.nd_namespace_index, %struct.nd_namespace_index* %30, i32 0, i32 6
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @__le32_to_cpu(i8* %32)
  store i32 %33, i32* %13, align 4
  br label %34

34:                                               ; preds = %29, %26
  %35 = load %struct.nd_namespace_index*, %struct.nd_namespace_index** %10, align 8
  %36 = getelementptr inbounds %struct.nd_namespace_index, %struct.nd_namespace_index* %35, i32 0, i32 12
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @NSINDEX_SIGNATURE, align 4
  %39 = load i32, i32* @NSINDEX_SIG_LEN, align 4
  %40 = call i32 @memcpy(i32 %37, i32 %38, i32 %39)
  %41 = load %struct.nd_namespace_index*, %struct.nd_namespace_index** %10, align 8
  %42 = getelementptr inbounds %struct.nd_namespace_index, %struct.nd_namespace_index* %41, i32 0, i32 11
  %43 = call i32 @memset(i32* %42, i32 0, i32 3)
  %44 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %6, align 8
  %45 = call i32 @sizeof_namespace_label(%struct.nvdimm_drvdata* %44)
  %46 = ashr i32 %45, 8
  %47 = load %struct.nd_namespace_index*, %struct.nd_namespace_index** %10, align 8
  %48 = getelementptr inbounds %struct.nd_namespace_index, %struct.nd_namespace_index* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i8* @__cpu_to_le32(i32 %49)
  %51 = load %struct.nd_namespace_index*, %struct.nd_namespace_index** %10, align 8
  %52 = getelementptr inbounds %struct.nd_namespace_index, %struct.nd_namespace_index* %51, i32 0, i32 10
  store i8* %50, i8** %52, align 8
  %53 = load %struct.nd_namespace_index*, %struct.nd_namespace_index** %10, align 8
  %54 = ptrtoint %struct.nd_namespace_index* %53 to i64
  %55 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %6, align 8
  %56 = call %struct.nd_namespace_index* @to_namespace_index(%struct.nvdimm_drvdata* %55, i32 0)
  %57 = ptrtoint %struct.nd_namespace_index* %56 to i64
  %58 = sub i64 %54, %57
  store i64 %58, i64* %11, align 8
  %59 = load i64, i64* %11, align 8
  %60 = call i8* @__cpu_to_le64(i64 %59)
  %61 = load %struct.nd_namespace_index*, %struct.nd_namespace_index** %10, align 8
  %62 = getelementptr inbounds %struct.nd_namespace_index, %struct.nd_namespace_index* %61, i32 0, i32 1
  store i8* %60, i8** %62, align 8
  %63 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %6, align 8
  %64 = call i64 @sizeof_namespace_index(%struct.nvdimm_drvdata* %63)
  %65 = call i8* @__cpu_to_le64(i64 %64)
  %66 = load %struct.nd_namespace_index*, %struct.nd_namespace_index** %10, align 8
  %67 = getelementptr inbounds %struct.nd_namespace_index, %struct.nd_namespace_index* %66, i32 0, i32 9
  store i8* %65, i8** %67, align 8
  %68 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %6, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @nd_label_next_nsindex(i32 %69)
  %71 = call %struct.nd_namespace_index* @to_namespace_index(%struct.nvdimm_drvdata* %68, i32 %70)
  %72 = ptrtoint %struct.nd_namespace_index* %71 to i64
  %73 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %6, align 8
  %74 = call %struct.nd_namespace_index* @to_namespace_index(%struct.nvdimm_drvdata* %73, i32 0)
  %75 = ptrtoint %struct.nd_namespace_index* %74 to i64
  %76 = sub i64 %72, %75
  store i64 %76, i64* %11, align 8
  %77 = load i64, i64* %11, align 8
  %78 = call i8* @__cpu_to_le64(i64 %77)
  %79 = load %struct.nd_namespace_index*, %struct.nd_namespace_index** %10, align 8
  %80 = getelementptr inbounds %struct.nd_namespace_index, %struct.nd_namespace_index* %79, i32 0, i32 8
  store i8* %78, i8** %80, align 8
  %81 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %6, align 8
  %82 = call i64 @nd_label_base(%struct.nvdimm_drvdata* %81)
  %83 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %6, align 8
  %84 = call %struct.nd_namespace_index* @to_namespace_index(%struct.nvdimm_drvdata* %83, i32 0)
  %85 = ptrtoint %struct.nd_namespace_index* %84 to i64
  %86 = sub i64 %82, %85
  store i64 %86, i64* %11, align 8
  %87 = load i64, i64* %11, align 8
  %88 = call i8* @__cpu_to_le64(i64 %87)
  %89 = load %struct.nd_namespace_index*, %struct.nd_namespace_index** %10, align 8
  %90 = getelementptr inbounds %struct.nd_namespace_index, %struct.nd_namespace_index* %89, i32 0, i32 7
  store i8* %88, i8** %90, align 8
  %91 = load i32, i32* %13, align 4
  %92 = call i8* @__cpu_to_le32(i32 %91)
  %93 = load %struct.nd_namespace_index*, %struct.nd_namespace_index** %10, align 8
  %94 = getelementptr inbounds %struct.nd_namespace_index, %struct.nd_namespace_index* %93, i32 0, i32 6
  store i8* %92, i8** %94, align 8
  %95 = call i8* @__cpu_to_le16(i32 1)
  %96 = load %struct.nd_namespace_index*, %struct.nd_namespace_index** %10, align 8
  %97 = getelementptr inbounds %struct.nd_namespace_index, %struct.nd_namespace_index* %96, i32 0, i32 5
  store i8* %95, i8** %97, align 8
  %98 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %6, align 8
  %99 = call i32 @sizeof_namespace_label(%struct.nvdimm_drvdata* %98)
  %100 = icmp slt i32 %99, 256
  br i1 %100, label %101, label %105

101:                                              ; preds = %34
  %102 = call i8* @__cpu_to_le16(i32 1)
  %103 = load %struct.nd_namespace_index*, %struct.nd_namespace_index** %10, align 8
  %104 = getelementptr inbounds %struct.nd_namespace_index, %struct.nd_namespace_index* %103, i32 0, i32 4
  store i8* %102, i8** %104, align 8
  br label %109

105:                                              ; preds = %34
  %106 = call i8* @__cpu_to_le16(i32 2)
  %107 = load %struct.nd_namespace_index*, %struct.nd_namespace_index** %10, align 8
  %108 = getelementptr inbounds %struct.nd_namespace_index, %struct.nd_namespace_index* %107, i32 0, i32 4
  store i8* %106, i8** %108, align 8
  br label %109

109:                                              ; preds = %105, %101
  %110 = call i8* @__cpu_to_le64(i64 0)
  %111 = load %struct.nd_namespace_index*, %struct.nd_namespace_index** %10, align 8
  %112 = getelementptr inbounds %struct.nd_namespace_index, %struct.nd_namespace_index* %111, i32 0, i32 2
  store i8* %110, i8** %112, align 8
  %113 = load i64, i64* %9, align 8
  %114 = load i64, i64* @ND_NSINDEX_INIT, align 8
  %115 = and i64 %113, %114
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %148

117:                                              ; preds = %109
  %118 = load %struct.nd_namespace_index*, %struct.nd_namespace_index** %10, align 8
  %119 = getelementptr inbounds %struct.nd_namespace_index, %struct.nd_namespace_index* %118, i32 0, i32 3
  %120 = load i32*, i32** %119, align 8
  %121 = bitcast i32* %120 to i64*
  store i64* %121, i64** %15, align 8
  %122 = load i32, i32* %13, align 4
  %123 = load i32, i32* @BITS_PER_LONG, align 4
  %124 = call i32 @ALIGN(i32 %122, i32 %123)
  store i32 %124, i32* %16, align 4
  %125 = load %struct.nd_namespace_index*, %struct.nd_namespace_index** %10, align 8
  %126 = getelementptr inbounds %struct.nd_namespace_index, %struct.nd_namespace_index* %125, i32 0, i32 3
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %16, align 4
  %129 = sdiv i32 %128, 8
  %130 = call i32 @memset(i32* %127, i32 255, i32 %129)
  store i32 0, i32* %18, align 4
  %131 = load i32, i32* %16, align 4
  %132 = load i32, i32* %13, align 4
  %133 = sub nsw i32 %131, %132
  store i32 %133, i32* %17, align 4
  br label %134

134:                                              ; preds = %144, %117
  %135 = load i32, i32* %18, align 4
  %136 = load i32, i32* %17, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %147

138:                                              ; preds = %134
  %139 = load i32, i32* %13, align 4
  %140 = load i32, i32* %18, align 4
  %141 = add nsw i32 %139, %140
  %142 = load i64*, i64** %15, align 8
  %143 = call i32 @clear_bit_le(i32 %141, i64* %142)
  br label %144

144:                                              ; preds = %138
  %145 = load i32, i32* %18, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %18, align 4
  br label %134

147:                                              ; preds = %134
  br label %148

148:                                              ; preds = %147, %109
  %149 = load %struct.nd_namespace_index*, %struct.nd_namespace_index** %10, align 8
  %150 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %6, align 8
  %151 = call i64 @sizeof_namespace_index(%struct.nvdimm_drvdata* %150)
  %152 = call i64 @nd_fletcher64(%struct.nd_namespace_index* %149, i64 %151, i32 1)
  store i64 %152, i64* %12, align 8
  %153 = load i64, i64* %12, align 8
  %154 = call i8* @__cpu_to_le64(i64 %153)
  %155 = load %struct.nd_namespace_index*, %struct.nd_namespace_index** %10, align 8
  %156 = getelementptr inbounds %struct.nd_namespace_index, %struct.nd_namespace_index* %155, i32 0, i32 2
  store i8* %154, i8** %156, align 8
  %157 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %6, align 8
  %158 = load %struct.nd_namespace_index*, %struct.nd_namespace_index** %10, align 8
  %159 = getelementptr inbounds %struct.nd_namespace_index, %struct.nd_namespace_index* %158, i32 0, i32 1
  %160 = load i8*, i8** %159, align 8
  %161 = call i32 @__le64_to_cpu(i8* %160)
  %162 = load %struct.nd_namespace_index*, %struct.nd_namespace_index** %10, align 8
  %163 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %6, align 8
  %164 = call i64 @sizeof_namespace_index(%struct.nvdimm_drvdata* %163)
  %165 = call i32 @nvdimm_set_config_data(%struct.nvdimm_drvdata* %157, i32 %161, %struct.nd_namespace_index* %162, i64 %164)
  store i32 %165, i32* %14, align 4
  %166 = load i32, i32* %14, align 4
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %148
  %169 = load i32, i32* %14, align 4
  store i32 %169, i32* %5, align 4
  br label %210

170:                                              ; preds = %148
  %171 = load i64, i64* %9, align 8
  %172 = load i64, i64* @ND_NSINDEX_INIT, align 8
  %173 = and i64 %171, %172
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %170
  store i32 0, i32* %5, align 4
  br label %210

176:                                              ; preds = %170
  %177 = load i32, i32* %7, align 4
  %178 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %6, align 8
  %179 = getelementptr inbounds %struct.nvdimm_drvdata, %struct.nvdimm_drvdata* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = icmp ne i32 %177, %180
  %182 = zext i1 %181 to i32
  %183 = call i32 @WARN_ON(i32 %182)
  %184 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %6, align 8
  %185 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %6, align 8
  %186 = call i32 @to_current_namespace_index(%struct.nvdimm_drvdata* %185)
  %187 = load %struct.nd_namespace_index*, %struct.nd_namespace_index** %10, align 8
  %188 = call i32 @nd_label_copy(%struct.nvdimm_drvdata* %184, i32 %186, %struct.nd_namespace_index* %187)
  %189 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %6, align 8
  %190 = getelementptr inbounds %struct.nvdimm_drvdata, %struct.nvdimm_drvdata* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @nd_label_next_nsindex(i32 %191)
  %193 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %6, align 8
  %194 = getelementptr inbounds %struct.nvdimm_drvdata, %struct.nvdimm_drvdata* %193, i32 0, i32 1
  store i32 %192, i32* %194, align 4
  %195 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %6, align 8
  %196 = getelementptr inbounds %struct.nvdimm_drvdata, %struct.nvdimm_drvdata* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @nd_label_next_nsindex(i32 %197)
  %199 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %6, align 8
  %200 = getelementptr inbounds %struct.nvdimm_drvdata, %struct.nvdimm_drvdata* %199, i32 0, i32 0
  store i32 %198, i32* %200, align 4
  %201 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %6, align 8
  %202 = getelementptr inbounds %struct.nvdimm_drvdata, %struct.nvdimm_drvdata* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %6, align 8
  %205 = getelementptr inbounds %struct.nvdimm_drvdata, %struct.nvdimm_drvdata* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = icmp eq i32 %203, %206
  %208 = zext i1 %207 to i32
  %209 = call i32 @WARN_ON(i32 %208)
  store i32 0, i32* %5, align 4
  br label %210

210:                                              ; preds = %176, %175, %168
  %211 = load i32, i32* %5, align 4
  ret i32 %211
}

declare dso_local %struct.nd_namespace_index* @to_namespace_index(%struct.nvdimm_drvdata*, i32) #1

declare dso_local i32 @nvdimm_num_label_slots(%struct.nvdimm_drvdata*) #1

declare dso_local i32 @__le32_to_cpu(i8*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @sizeof_namespace_label(%struct.nvdimm_drvdata*) #1

declare dso_local i8* @__cpu_to_le32(i32) #1

declare dso_local i8* @__cpu_to_le64(i64) #1

declare dso_local i64 @sizeof_namespace_index(%struct.nvdimm_drvdata*) #1

declare dso_local i32 @nd_label_next_nsindex(i32) #1

declare dso_local i64 @nd_label_base(%struct.nvdimm_drvdata*) #1

declare dso_local i8* @__cpu_to_le16(i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @clear_bit_le(i32, i64*) #1

declare dso_local i64 @nd_fletcher64(%struct.nd_namespace_index*, i64, i32) #1

declare dso_local i32 @nvdimm_set_config_data(%struct.nvdimm_drvdata*, i32, %struct.nd_namespace_index*, i64) #1

declare dso_local i32 @__le64_to_cpu(i8*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @nd_label_copy(%struct.nvdimm_drvdata*, i32, %struct.nd_namespace_index*) #1

declare dso_local i32 @to_current_namespace_index(%struct.nvdimm_drvdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
