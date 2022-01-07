; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_aachba.c_aac_convert_sgraw2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_aachba.c_aac_convert_sgraw2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_raw_io2 = type { i32, i32, i32, %struct.sge_ieee1212* }
%struct.sge_ieee1212 = type { i32, i64, i64, i32 }

@aac_convert_sgl = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@RIO2_SGL_CONFORMANT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aac_raw_io2*, i32, i32, i32)* @aac_convert_sgraw2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_convert_sgraw2(%struct.aac_raw_io2* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.aac_raw_io2*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sge_ieee1212*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.aac_raw_io2* %0, %struct.aac_raw_io2** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i64, i64* @aac_convert_sgl, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %168

18:                                               ; preds = %4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @GFP_ATOMIC, align 4
  %21 = call %struct.sge_ieee1212* @kmalloc_array(i32 %19, i32 32, i32 %20)
  store %struct.sge_ieee1212* %21, %struct.sge_ieee1212** %10, align 8
  %22 = load %struct.sge_ieee1212*, %struct.sge_ieee1212** %10, align 8
  %23 = icmp eq %struct.sge_ieee1212* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %168

27:                                               ; preds = %18
  store i32 1, i32* %11, align 4
  store i32 1, i32* %13, align 4
  br label %28

28:                                               ; preds = %122, %27
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %8, align 4
  %31 = sub nsw i32 %30, 1
  %32 = icmp slt i32 %29, %31
  br i1 %32, label %33, label %125

33:                                               ; preds = %28
  store i32 0, i32* %12, align 4
  br label %34

34:                                               ; preds = %118, %33
  %35 = load i32, i32* %12, align 4
  %36 = load %struct.aac_raw_io2*, %struct.aac_raw_io2** %6, align 8
  %37 = getelementptr inbounds %struct.aac_raw_io2, %struct.aac_raw_io2* %36, i32 0, i32 3
  %38 = load %struct.sge_ieee1212*, %struct.sge_ieee1212** %37, align 8
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.sge_ieee1212, %struct.sge_ieee1212* %38, i64 %40
  %42 = getelementptr inbounds %struct.sge_ieee1212, %struct.sge_ieee1212* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @PAGE_SIZE, align 4
  %46 = mul nsw i32 %44, %45
  %47 = sdiv i32 %43, %46
  %48 = icmp slt i32 %35, %47
  br i1 %48, label %49, label %121

49:                                               ; preds = %34
  %50 = load %struct.aac_raw_io2*, %struct.aac_raw_io2** %6, align 8
  %51 = getelementptr inbounds %struct.aac_raw_io2, %struct.aac_raw_io2* %50, i32 0, i32 3
  %52 = load %struct.sge_ieee1212*, %struct.sge_ieee1212** %51, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.sge_ieee1212, %struct.sge_ieee1212* %52, i64 %54
  %56 = getelementptr inbounds %struct.sge_ieee1212, %struct.sge_ieee1212* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %7, align 4
  %60 = mul nsw i32 %58, %59
  %61 = load i32, i32* @PAGE_SIZE, align 4
  %62 = mul nsw i32 %60, %61
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %57, %63
  store i64 %64, i64* %14, align 8
  %65 = load i64, i64* %14, align 8
  %66 = load %struct.sge_ieee1212*, %struct.sge_ieee1212** %10, align 8
  %67 = load i32, i32* %13, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.sge_ieee1212, %struct.sge_ieee1212* %66, i64 %68
  %70 = getelementptr inbounds %struct.sge_ieee1212, %struct.sge_ieee1212* %69, i32 0, i32 1
  store i64 %65, i64* %70, align 8
  %71 = load %struct.aac_raw_io2*, %struct.aac_raw_io2** %6, align 8
  %72 = getelementptr inbounds %struct.aac_raw_io2, %struct.aac_raw_io2* %71, i32 0, i32 3
  %73 = load %struct.sge_ieee1212*, %struct.sge_ieee1212** %72, align 8
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.sge_ieee1212, %struct.sge_ieee1212* %73, i64 %75
  %77 = getelementptr inbounds %struct.sge_ieee1212, %struct.sge_ieee1212* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.sge_ieee1212*, %struct.sge_ieee1212** %10, align 8
  %80 = load i32, i32* %13, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.sge_ieee1212, %struct.sge_ieee1212* %79, i64 %81
  %83 = getelementptr inbounds %struct.sge_ieee1212, %struct.sge_ieee1212* %82, i32 0, i32 3
  store i32 %78, i32* %83, align 8
  %84 = load i64, i64* %14, align 8
  %85 = load %struct.aac_raw_io2*, %struct.aac_raw_io2** %6, align 8
  %86 = getelementptr inbounds %struct.aac_raw_io2, %struct.aac_raw_io2* %85, i32 0, i32 3
  %87 = load %struct.sge_ieee1212*, %struct.sge_ieee1212** %86, align 8
  %88 = load i32, i32* %11, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.sge_ieee1212, %struct.sge_ieee1212* %87, i64 %89
  %91 = getelementptr inbounds %struct.sge_ieee1212, %struct.sge_ieee1212* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp slt i64 %84, %92
  br i1 %93, label %94, label %102

94:                                               ; preds = %49
  %95 = load %struct.sge_ieee1212*, %struct.sge_ieee1212** %10, align 8
  %96 = load i32, i32* %13, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.sge_ieee1212, %struct.sge_ieee1212* %95, i64 %97
  %99 = getelementptr inbounds %struct.sge_ieee1212, %struct.sge_ieee1212* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 8
  br label %102

102:                                              ; preds = %94, %49
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* @PAGE_SIZE, align 4
  %105 = mul nsw i32 %103, %104
  %106 = load %struct.sge_ieee1212*, %struct.sge_ieee1212** %10, align 8
  %107 = load i32, i32* %13, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.sge_ieee1212, %struct.sge_ieee1212* %106, i64 %108
  %110 = getelementptr inbounds %struct.sge_ieee1212, %struct.sge_ieee1212* %109, i32 0, i32 0
  store i32 %105, i32* %110, align 8
  %111 = load %struct.sge_ieee1212*, %struct.sge_ieee1212** %10, align 8
  %112 = load i32, i32* %13, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.sge_ieee1212, %struct.sge_ieee1212* %111, i64 %113
  %115 = getelementptr inbounds %struct.sge_ieee1212, %struct.sge_ieee1212* %114, i32 0, i32 2
  store i64 0, i64* %115, align 8
  %116 = load i32, i32* %13, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %13, align 4
  br label %118

118:                                              ; preds = %102
  %119 = load i32, i32* %12, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %12, align 4
  br label %34

121:                                              ; preds = %34
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %11, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %11, align 4
  br label %28

125:                                              ; preds = %28
  %126 = load %struct.sge_ieee1212*, %struct.sge_ieee1212** %10, align 8
  %127 = load i32, i32* %13, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.sge_ieee1212, %struct.sge_ieee1212* %126, i64 %128
  %130 = load %struct.aac_raw_io2*, %struct.aac_raw_io2** %6, align 8
  %131 = getelementptr inbounds %struct.aac_raw_io2, %struct.aac_raw_io2* %130, i32 0, i32 3
  %132 = load %struct.sge_ieee1212*, %struct.sge_ieee1212** %131, align 8
  %133 = load i32, i32* %8, align 4
  %134 = sub nsw i32 %133, 1
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.sge_ieee1212, %struct.sge_ieee1212* %132, i64 %135
  %137 = bitcast %struct.sge_ieee1212* %129 to i8*
  %138 = bitcast %struct.sge_ieee1212* %136 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %137, i8* align 8 %138, i64 32, i1 false)
  %139 = load %struct.aac_raw_io2*, %struct.aac_raw_io2** %6, align 8
  %140 = getelementptr inbounds %struct.aac_raw_io2, %struct.aac_raw_io2* %139, i32 0, i32 3
  %141 = load %struct.sge_ieee1212*, %struct.sge_ieee1212** %140, align 8
  %142 = getelementptr inbounds %struct.sge_ieee1212, %struct.sge_ieee1212* %141, i64 1
  %143 = load %struct.sge_ieee1212*, %struct.sge_ieee1212** %10, align 8
  %144 = getelementptr inbounds %struct.sge_ieee1212, %struct.sge_ieee1212* %143, i64 1
  %145 = load i32, i32* %9, align 4
  %146 = sub nsw i32 %145, 1
  %147 = sext i32 %146 to i64
  %148 = mul i64 %147, 32
  %149 = trunc i64 %148 to i32
  %150 = call i32 @memcpy(%struct.sge_ieee1212* %142, %struct.sge_ieee1212* %144, i32 %149)
  %151 = load %struct.sge_ieee1212*, %struct.sge_ieee1212** %10, align 8
  %152 = call i32 @kfree(%struct.sge_ieee1212* %151)
  %153 = load i32, i32* %9, align 4
  %154 = call i32 @cpu_to_le32(i32 %153)
  %155 = load %struct.aac_raw_io2*, %struct.aac_raw_io2** %6, align 8
  %156 = getelementptr inbounds %struct.aac_raw_io2, %struct.aac_raw_io2* %155, i32 0, i32 2
  store i32 %154, i32* %156, align 8
  %157 = load i32, i32* @RIO2_SGL_CONFORMANT, align 4
  %158 = call i32 @cpu_to_le16(i32 %157)
  %159 = load %struct.aac_raw_io2*, %struct.aac_raw_io2** %6, align 8
  %160 = getelementptr inbounds %struct.aac_raw_io2, %struct.aac_raw_io2* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = or i32 %161, %158
  store i32 %162, i32* %160, align 4
  %163 = load i32, i32* %7, align 4
  %164 = load i32, i32* @PAGE_SIZE, align 4
  %165 = mul nsw i32 %163, %164
  %166 = load %struct.aac_raw_io2*, %struct.aac_raw_io2** %6, align 8
  %167 = getelementptr inbounds %struct.aac_raw_io2, %struct.aac_raw_io2* %166, i32 0, i32 0
  store i32 %165, i32* %167, align 8
  store i32 0, i32* %5, align 4
  br label %168

168:                                              ; preds = %125, %24, %17
  %169 = load i32, i32* %5, align 4
  ret i32 %169
}

declare dso_local %struct.sge_ieee1212* @kmalloc_array(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memcpy(%struct.sge_ieee1212*, %struct.sge_ieee1212*, i32) #1

declare dso_local i32 @kfree(%struct.sge_ieee1212*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
