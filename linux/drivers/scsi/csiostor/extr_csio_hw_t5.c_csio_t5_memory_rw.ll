; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw_t5.c_csio_t5_memory_rw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw_t5.c_csio_t5_memory_rw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@MA_EDRAM0_BAR_A = common dso_local global i32 0, align 4
@MEM_MC1 = common dso_local global i32 0, align 4
@MA_EXT_MEMORY_BAR_A = common dso_local global i32 0, align 4
@MEM_MC0 = common dso_local global i32 0, align 4
@PCIE_MEM_ACCESS_BASE_WIN_A = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"csio_t5_memory_rw: mem_reg: 0x%x, mem_aperture: 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"csio_t5_memory_rw: mem_base: 0x%x, mem_offset: 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"csio_t5_memory_rw: start:0x%x, offset:0x%x, win_pf:%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"csio_t5_memory_rw: mtype: %d, addr: 0x%x, len: %d\0A\00", align 1
@PCIE_MEM_ACCESS_OFFSET_A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.csio_hw*, i32, i32, i32, i32, i32*, i32)* @csio_t5_memory_rw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csio_t5_memory_rw(%struct.csio_hw* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.csio_hw*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.csio_hw* %0, %struct.csio_hw** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %26 = load i32, i32* %12, align 4
  %27 = and i32 %26, 3
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %7
  %30 = load i32, i32* %13, align 4
  %31 = and i32 %30, 3
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29, %7
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %8, align 4
  br label %172

36:                                               ; preds = %29
  %37 = load %struct.csio_hw*, %struct.csio_hw** %9, align 8
  %38 = load i32, i32* @MA_EDRAM0_BAR_A, align 4
  %39 = call i8* @csio_rd_reg32(%struct.csio_hw* %37, i32 %38)
  %40 = call i32 @EDRAM0_SIZE_G(i8* %39)
  store i32 %40, i32* %20, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @MEM_MC1, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %36
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %20, align 4
  %47 = mul nsw i32 %46, 1024
  %48 = mul nsw i32 %47, 1024
  %49 = mul nsw i32 %45, %48
  store i32 %49, i32* %19, align 4
  br label %62

50:                                               ; preds = %36
  %51 = load %struct.csio_hw*, %struct.csio_hw** %9, align 8
  %52 = load i32, i32* @MA_EXT_MEMORY_BAR_A, align 4
  %53 = call i8* @csio_rd_reg32(%struct.csio_hw* %51, i32 %52)
  %54 = call i32 @EXT_MEM_SIZE_G(i8* %53)
  store i32 %54, i32* %21, align 4
  %55 = load i32, i32* @MEM_MC0, align 4
  %56 = load i32, i32* %20, align 4
  %57 = mul nsw i32 %55, %56
  %58 = load i32, i32* %21, align 4
  %59 = add nsw i32 %57, %58
  %60 = mul nsw i32 %59, 1024
  %61 = mul nsw i32 %60, 1024
  store i32 %61, i32* %19, align 4
  br label %62

62:                                               ; preds = %50, %44
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %19, align 4
  %65 = add nsw i32 %63, %64
  store i32 %65, i32* %12, align 4
  %66 = load %struct.csio_hw*, %struct.csio_hw** %9, align 8
  %67 = load i32, i32* @PCIE_MEM_ACCESS_BASE_WIN_A, align 4
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @PCIE_MEM_ACCESS_REG(i32 %67, i32 %68)
  %70 = call i8* @csio_rd_reg32(%struct.csio_hw* %66, i32 %69)
  %71 = ptrtoint i8* %70 to i32
  store i32 %71, i32* %23, align 4
  %72 = load i32, i32* %23, align 4
  %73 = call i32 @WINDOW_V(i32 %72)
  %74 = add nsw i32 %73, 10
  %75 = shl i32 1, %74
  store i32 %75, i32* %24, align 4
  %76 = load i32, i32* %23, align 4
  %77 = call i32 @PCIEOFST_G(i32 %76)
  %78 = shl i32 %77, 10
  store i32 %78, i32* %25, align 4
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %24, align 4
  %81 = sub nsw i32 %80, 1
  %82 = xor i32 %81, -1
  %83 = and i32 %79, %82
  store i32 %83, i32* %17, align 4
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %17, align 4
  %86 = sub nsw i32 %84, %85
  store i32 %86, i32* %18, align 4
  %87 = load %struct.csio_hw*, %struct.csio_hw** %9, align 8
  %88 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @PFNUM_V(i32 %89)
  store i32 %90, i32* %22, align 4
  %91 = load %struct.csio_hw*, %struct.csio_hw** %9, align 8
  %92 = load i32, i32* %23, align 4
  %93 = load i32, i32* %24, align 4
  %94 = call i32 (%struct.csio_hw*, i8*, i32, i32, ...) @csio_dbg(%struct.csio_hw* %91, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %92, i32 %93)
  %95 = load %struct.csio_hw*, %struct.csio_hw** %9, align 8
  %96 = load i32, i32* %25, align 4
  %97 = load i32, i32* %19, align 4
  %98 = call i32 (%struct.csio_hw*, i8*, i32, i32, ...) @csio_dbg(%struct.csio_hw* %95, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %96, i32 %97)
  %99 = load %struct.csio_hw*, %struct.csio_hw** %9, align 8
  %100 = load i32, i32* %17, align 4
  %101 = load i32, i32* %18, align 4
  %102 = load i32, i32* %22, align 4
  %103 = call i32 (%struct.csio_hw*, i8*, i32, i32, ...) @csio_dbg(%struct.csio_hw* %99, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %100, i32 %101, i32 %102)
  %104 = load %struct.csio_hw*, %struct.csio_hw** %9, align 8
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* %13, align 4
  %108 = call i32 (%struct.csio_hw*, i8*, i32, i32, ...) @csio_dbg(%struct.csio_hw* %104, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %105, i32 %106, i32 %107)
  %109 = load i32, i32* %17, align 4
  store i32 %109, i32* %16, align 4
  br label %110

110:                                              ; preds = %167, %62
  %111 = load i32, i32* %13, align 4
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %171

113:                                              ; preds = %110
  %114 = load %struct.csio_hw*, %struct.csio_hw** %9, align 8
  %115 = load i32, i32* %16, align 4
  %116 = load i32, i32* %22, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @PCIE_MEM_ACCESS_OFFSET_A, align 4
  %119 = load i32, i32* %10, align 4
  %120 = call i32 @PCIE_MEM_ACCESS_REG(i32 %118, i32 %119)
  %121 = call i32 @csio_wr_reg32(%struct.csio_hw* %114, i32 %117, i32 %120)
  %122 = load %struct.csio_hw*, %struct.csio_hw** %9, align 8
  %123 = load i32, i32* @PCIE_MEM_ACCESS_OFFSET_A, align 4
  %124 = load i32, i32* %10, align 4
  %125 = call i32 @PCIE_MEM_ACCESS_REG(i32 %123, i32 %124)
  %126 = call i8* @csio_rd_reg32(%struct.csio_hw* %122, i32 %125)
  br label %127

127:                                              ; preds = %157, %113
  %128 = load i32, i32* %18, align 4
  %129 = load i32, i32* %24, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %127
  %132 = load i32, i32* %13, align 4
  %133 = icmp sgt i32 %132, 0
  br label %134

134:                                              ; preds = %131, %127
  %135 = phi i1 [ false, %127 ], [ %133, %131 ]
  br i1 %135, label %136, label %166

136:                                              ; preds = %134
  %137 = load i32, i32* %15, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %148

139:                                              ; preds = %136
  %140 = load %struct.csio_hw*, %struct.csio_hw** %9, align 8
  %141 = load i32, i32* %25, align 4
  %142 = load i32, i32* %18, align 4
  %143 = add nsw i32 %141, %142
  %144 = call i8* @csio_rd_reg32(%struct.csio_hw* %140, i32 %143)
  %145 = ptrtoint i8* %144 to i32
  %146 = load i32*, i32** %14, align 8
  %147 = getelementptr inbounds i32, i32* %146, i32 1
  store i32* %147, i32** %14, align 8
  store i32 %145, i32* %146, align 4
  br label %157

148:                                              ; preds = %136
  %149 = load %struct.csio_hw*, %struct.csio_hw** %9, align 8
  %150 = load i32*, i32** %14, align 8
  %151 = getelementptr inbounds i32, i32* %150, i32 1
  store i32* %151, i32** %14, align 8
  %152 = load i32, i32* %150, align 4
  %153 = load i32, i32* %25, align 4
  %154 = load i32, i32* %18, align 4
  %155 = add nsw i32 %153, %154
  %156 = call i32 @csio_wr_reg32(%struct.csio_hw* %149, i32 %152, i32 %155)
  br label %157

157:                                              ; preds = %148, %139
  %158 = load i32, i32* %18, align 4
  %159 = sext i32 %158 to i64
  %160 = add i64 %159, 4
  %161 = trunc i64 %160 to i32
  store i32 %161, i32* %18, align 4
  %162 = load i32, i32* %13, align 4
  %163 = sext i32 %162 to i64
  %164 = sub i64 %163, 4
  %165 = trunc i64 %164 to i32
  store i32 %165, i32* %13, align 4
  br label %127

166:                                              ; preds = %134
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %24, align 4
  %169 = load i32, i32* %16, align 4
  %170 = add nsw i32 %169, %168
  store i32 %170, i32* %16, align 4
  store i32 0, i32* %18, align 4
  br label %110

171:                                              ; preds = %110
  store i32 0, i32* %8, align 4
  br label %172

172:                                              ; preds = %171, %33
  %173 = load i32, i32* %8, align 4
  ret i32 %173
}

declare dso_local i32 @EDRAM0_SIZE_G(i8*) #1

declare dso_local i8* @csio_rd_reg32(%struct.csio_hw*, i32) #1

declare dso_local i32 @EXT_MEM_SIZE_G(i8*) #1

declare dso_local i32 @PCIE_MEM_ACCESS_REG(i32, i32) #1

declare dso_local i32 @WINDOW_V(i32) #1

declare dso_local i32 @PCIEOFST_G(i32) #1

declare dso_local i32 @PFNUM_V(i32) #1

declare dso_local i32 @csio_dbg(%struct.csio_hw*, i8*, i32, i32, ...) #1

declare dso_local i32 @csio_wr_reg32(%struct.csio_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
