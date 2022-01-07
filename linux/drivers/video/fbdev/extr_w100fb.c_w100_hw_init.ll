; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_w100fb.c_w100_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_w100fb.c_w100_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w100fb_par = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.w100_gpio_regs* }
%struct.w100_gpio_regs = type { i32, i32, i32, i32, i32, i32 }
%union.cif_cntl_u = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i64 }
%union.intf_cntl_u = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, i64, i64 }
%union.cfgreg_base_u = type { i64 }
%union.wrap_top_dir_u = type { i64 }
%union.cif_read_dbg_u = type { i8* }
%union.cpu_defaults_u = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32, i32, i64 }
%union.cif_write_dbg_u = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i64 }
%union.wrap_start_dir_u = type { i64 }
%union.cif_io_u = type { i64 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { i32 }

@remapped_regs = common dso_local global i64 0, align 8
@mmSCRATCH_UMSK = common dso_local global i64 0, align 8
@defCIF_IO = common dso_local global i64 0, align 8
@mmCIF_IO = common dso_local global i64 0, align 8
@mmCIF_WRITE_DBG = common dso_local global i64 0, align 8
@mmCIF_READ_DBG = common dso_local global i64 0, align 8
@mmCIF_CNTL = common dso_local global i64 0, align 8
@defINTF_CNTL = common dso_local global i64 0, align 8
@remapped_base = common dso_local global i64 0, align 8
@cfgINTF_CNTL = common dso_local global i64 0, align 8
@defCPU_DEFAULTS = common dso_local global i64 0, align 8
@cfgCPU_DEFAULTS = common dso_local global i64 0, align 8
@W100_REG_BASE = common dso_local global i32 0, align 4
@cfgREG_BASE = common dso_local global i64 0, align 8
@defCFGREG_BASE = common dso_local global i64 0, align 8
@W100_CFG_BASE = common dso_local global i32 0, align 4
@mmCFGREG_BASE = common dso_local global i64 0, align 8
@defWRAP_START_DIR = common dso_local global i64 0, align 8
@WRAP_BUF_BASE_VALUE = common dso_local global i32 0, align 4
@mmWRAP_START_DIR = common dso_local global i64 0, align 8
@defWRAP_TOP_DIR = common dso_local global i64 0, align 8
@WRAP_BUF_TOP_VALUE = common dso_local global i32 0, align 4
@mmWRAP_TOP_DIR = common dso_local global i64 0, align 8
@mmRBBM_CNTL = common dso_local global i64 0, align 8
@mmDISP_DEBUG2 = common dso_local global i64 0, align 8
@mmGPIO_DATA = common dso_local global i64 0, align 8
@mmGPIO_DATA2 = common dso_local global i64 0, align 8
@mmGPIO_CNTL1 = common dso_local global i64 0, align 8
@mmGPIO_CNTL2 = common dso_local global i64 0, align 8
@mmGPIO_CNTL3 = common dso_local global i64 0, align 8
@mmGPIO_CNTL4 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.w100fb_par*)* @w100_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @w100_hw_init(%struct.w100fb_par* %0) #0 {
  %2 = alloca %struct.w100fb_par*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %union.cif_cntl_u, align 8
  %5 = alloca %union.intf_cntl_u, align 8
  %6 = alloca %union.cfgreg_base_u, align 8
  %7 = alloca %union.wrap_top_dir_u, align 8
  %8 = alloca %union.cif_read_dbg_u, align 8
  %9 = alloca %union.cpu_defaults_u, align 8
  %10 = alloca %union.cif_write_dbg_u, align 8
  %11 = alloca %union.wrap_start_dir_u, align 8
  %12 = alloca %union.cif_io_u, align 8
  %13 = alloca %struct.w100_gpio_regs*, align 8
  store %struct.w100fb_par* %0, %struct.w100fb_par** %2, align 8
  %14 = load %struct.w100fb_par*, %struct.w100fb_par** %2, align 8
  %15 = getelementptr inbounds %struct.w100fb_par, %struct.w100fb_par* %14, i32 0, i32 0
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load %struct.w100_gpio_regs*, %struct.w100_gpio_regs** %17, align 8
  store %struct.w100_gpio_regs* %18, %struct.w100_gpio_regs** %13, align 8
  %19 = call i32 (...) @w100_soft_reset()
  %20 = load i64, i64* @remapped_regs, align 8
  %21 = load i64, i64* @mmSCRATCH_UMSK, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @writel(i32 49, i64 %22)
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %32, %1
  %25 = load i32, i32* %3, align 4
  %26 = icmp slt i32 %25, 10000
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = load i64, i64* @remapped_regs, align 8
  %29 = load i64, i64* @mmSCRATCH_UMSK, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i8* @readl(i64 %30)
  br label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %24

35:                                               ; preds = %24
  %36 = load i64, i64* @remapped_regs, align 8
  %37 = load i64, i64* @mmSCRATCH_UMSK, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @writel(i32 48, i64 %38)
  %40 = load i64, i64* @defCIF_IO, align 8
  %41 = bitcast %union.cif_io_u* %12 to i64*
  store i64 %40, i64* %41, align 8
  %42 = bitcast %union.cif_io_u* %12 to i64*
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = load i64, i64* @remapped_regs, align 8
  %46 = load i64, i64* @mmCIF_IO, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @writel(i32 %44, i64 %47)
  %49 = load i64, i64* @remapped_regs, align 8
  %50 = load i64, i64* @mmCIF_WRITE_DBG, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i8* @readl(i64 %51)
  %53 = bitcast %union.cif_write_dbg_u* %10 to i8**
  store i8* %52, i8** %53, align 8
  %54 = bitcast %union.cif_write_dbg_u* %10 to %struct.TYPE_11__*
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 2
  store i64 0, i64* %55, align 8
  %56 = bitcast %union.cif_write_dbg_u* %10 to %struct.TYPE_11__*
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  store i32 1, i32* %57, align 8
  %58 = bitcast %union.cif_write_dbg_u* %10 to %struct.TYPE_11__*
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 1
  store i32 1, i32* %59, align 4
  %60 = bitcast %union.cif_write_dbg_u* %10 to i8**
  %61 = load i8*, i8** %60, align 8
  %62 = ptrtoint i8* %61 to i32
  %63 = load i64, i64* @remapped_regs, align 8
  %64 = load i64, i64* @mmCIF_WRITE_DBG, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @writel(i32 %62, i64 %65)
  %67 = load i64, i64* @remapped_regs, align 8
  %68 = load i64, i64* @mmCIF_READ_DBG, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i8* @readl(i64 %69)
  %71 = bitcast %union.cif_read_dbg_u* %8 to i8**
  store i8* %70, i8** %71, align 8
  %72 = bitcast %union.cif_read_dbg_u* %8 to %struct.TYPE_12__*
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  store i32 1, i32* %73, align 8
  %74 = bitcast %union.cif_read_dbg_u* %8 to i8**
  %75 = load i8*, i8** %74, align 8
  %76 = ptrtoint i8* %75 to i32
  %77 = load i64, i64* @remapped_regs, align 8
  %78 = load i64, i64* @mmCIF_READ_DBG, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 @writel(i32 %76, i64 %79)
  %81 = load i64, i64* @remapped_regs, align 8
  %82 = load i64, i64* @mmCIF_CNTL, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i8* @readl(i64 %83)
  %85 = bitcast %union.cif_cntl_u* %4 to i8**
  store i8* %84, i8** %85, align 8
  %86 = bitcast %union.cif_cntl_u* %4 to %struct.TYPE_13__*
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  store i32 1, i32* %87, align 8
  %88 = bitcast %union.cif_cntl_u* %4 to %struct.TYPE_13__*
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 1
  store i32 1, i32* %89, align 4
  %90 = bitcast %union.cif_cntl_u* %4 to %struct.TYPE_13__*
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 4
  store i64 0, i64* %91, align 8
  %92 = bitcast %union.cif_cntl_u* %4 to %struct.TYPE_13__*
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 2
  store i32 1, i32* %93, align 8
  %94 = bitcast %union.cif_cntl_u* %4 to %struct.TYPE_13__*
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 3
  store i32 1, i32* %95, align 4
  %96 = bitcast %union.cif_cntl_u* %4 to i8**
  %97 = load i8*, i8** %96, align 8
  %98 = ptrtoint i8* %97 to i32
  %99 = load i64, i64* @remapped_regs, align 8
  %100 = load i64, i64* @mmCIF_CNTL, align 8
  %101 = add nsw i64 %99, %100
  %102 = call i32 @writel(i32 %98, i64 %101)
  %103 = load i64, i64* @defINTF_CNTL, align 8
  %104 = bitcast %union.intf_cntl_u* %5 to i64*
  store i64 %103, i64* %104, align 8
  %105 = bitcast %union.intf_cntl_u* %5 to %struct.TYPE_14__*
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  store i32 1, i32* %106, align 8
  %107 = bitcast %union.intf_cntl_u* %5 to %struct.TYPE_14__*
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 1
  store i32 1, i32* %108, align 4
  %109 = bitcast %union.intf_cntl_u* %5 to %struct.TYPE_14__*
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 3
  store i64 0, i64* %110, align 8
  %111 = bitcast %union.intf_cntl_u* %5 to %struct.TYPE_14__*
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 2
  store i64 0, i64* %112, align 8
  %113 = bitcast %union.intf_cntl_u* %5 to i64*
  %114 = load i64, i64* %113, align 8
  %115 = trunc i64 %114 to i32
  %116 = load i64, i64* @remapped_base, align 8
  %117 = load i64, i64* @cfgINTF_CNTL, align 8
  %118 = add nsw i64 %116, %117
  %119 = call i32 @writeb(i32 %115, i64 %118)
  %120 = load i64, i64* @defCPU_DEFAULTS, align 8
  %121 = bitcast %union.cpu_defaults_u* %9 to i64*
  store i64 %120, i64* %121, align 8
  %122 = bitcast %union.cpu_defaults_u* %9 to %struct.TYPE_15__*
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 0
  store i32 1, i32* %123, align 8
  %124 = bitcast %union.cpu_defaults_u* %9 to %struct.TYPE_15__*
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 1
  store i32 1, i32* %125, align 4
  %126 = bitcast %union.cpu_defaults_u* %9 to %struct.TYPE_15__*
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 2
  store i32 1, i32* %127, align 8
  %128 = bitcast %union.cpu_defaults_u* %9 to %struct.TYPE_15__*
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 3
  store i64 0, i64* %129, align 8
  %130 = bitcast %union.cpu_defaults_u* %9 to i64*
  %131 = load i64, i64* %130, align 8
  %132 = trunc i64 %131 to i32
  %133 = load i64, i64* @remapped_base, align 8
  %134 = load i64, i64* @cfgCPU_DEFAULTS, align 8
  %135 = add nsw i64 %133, %134
  %136 = call i32 @writeb(i32 %132, i64 %135)
  %137 = load i32, i32* @W100_REG_BASE, align 4
  %138 = ashr i32 %137, 16
  %139 = load i64, i64* @remapped_base, align 8
  %140 = load i64, i64* @cfgREG_BASE, align 8
  %141 = add nsw i64 %139, %140
  %142 = call i32 @writeb(i32 %138, i64 %141)
  %143 = load i64, i64* @defCFGREG_BASE, align 8
  %144 = bitcast %union.cfgreg_base_u* %6 to i64*
  store i64 %143, i64* %144, align 8
  %145 = load i32, i32* @W100_CFG_BASE, align 4
  %146 = bitcast %union.cfgreg_base_u* %6 to %struct.TYPE_16__*
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 8
  %148 = bitcast %union.cfgreg_base_u* %6 to i64*
  %149 = load i64, i64* %148, align 8
  %150 = trunc i64 %149 to i32
  %151 = load i64, i64* @remapped_regs, align 8
  %152 = load i64, i64* @mmCFGREG_BASE, align 8
  %153 = add nsw i64 %151, %152
  %154 = call i32 @writel(i32 %150, i64 %153)
  %155 = load i64, i64* @defWRAP_START_DIR, align 8
  %156 = bitcast %union.wrap_start_dir_u* %11 to i64*
  store i64 %155, i64* %156, align 8
  %157 = load i32, i32* @WRAP_BUF_BASE_VALUE, align 4
  %158 = ashr i32 %157, 1
  %159 = bitcast %union.wrap_start_dir_u* %11 to %struct.TYPE_17__*
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %159, i32 0, i32 0
  store i32 %158, i32* %160, align 8
  %161 = bitcast %union.wrap_start_dir_u* %11 to i64*
  %162 = load i64, i64* %161, align 8
  %163 = trunc i64 %162 to i32
  %164 = load i64, i64* @remapped_regs, align 8
  %165 = load i64, i64* @mmWRAP_START_DIR, align 8
  %166 = add nsw i64 %164, %165
  %167 = call i32 @writel(i32 %163, i64 %166)
  %168 = load i64, i64* @defWRAP_TOP_DIR, align 8
  %169 = bitcast %union.wrap_top_dir_u* %7 to i64*
  store i64 %168, i64* %169, align 8
  %170 = load i32, i32* @WRAP_BUF_TOP_VALUE, align 4
  %171 = ashr i32 %170, 1
  %172 = bitcast %union.wrap_top_dir_u* %7 to %struct.TYPE_18__*
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 0
  store i32 %171, i32* %173, align 8
  %174 = bitcast %union.wrap_top_dir_u* %7 to i64*
  %175 = load i64, i64* %174, align 8
  %176 = trunc i64 %175 to i32
  %177 = load i64, i64* @remapped_regs, align 8
  %178 = load i64, i64* @mmWRAP_TOP_DIR, align 8
  %179 = add nsw i64 %177, %178
  %180 = call i32 @writel(i32 %176, i64 %179)
  %181 = load i64, i64* @remapped_regs, align 8
  %182 = load i64, i64* @mmRBBM_CNTL, align 8
  %183 = add nsw i64 %181, %182
  %184 = call i32 @writel(i32 9280, i64 %183)
  %185 = load i64, i64* @remapped_regs, align 8
  %186 = load i64, i64* @mmDISP_DEBUG2, align 8
  %187 = add nsw i64 %185, %186
  %188 = call i8* @readl(i64 %187)
  %189 = ptrtoint i8* %188 to i32
  store i32 %189, i32* %3, align 4
  %190 = load i32, i32* %3, align 4
  %191 = and i32 %190, -8388609
  store i32 %191, i32* %3, align 4
  %192 = load i32, i32* %3, align 4
  %193 = or i32 %192, 8388608
  store i32 %193, i32* %3, align 4
  %194 = load i32, i32* %3, align 4
  %195 = load i64, i64* @remapped_regs, align 8
  %196 = load i64, i64* @mmDISP_DEBUG2, align 8
  %197 = add nsw i64 %195, %196
  %198 = call i32 @writel(i32 %194, i64 %197)
  %199 = load %struct.w100_gpio_regs*, %struct.w100_gpio_regs** %13, align 8
  %200 = icmp ne %struct.w100_gpio_regs* %199, null
  br i1 %200, label %201, label %244

201:                                              ; preds = %35
  %202 = load %struct.w100_gpio_regs*, %struct.w100_gpio_regs** %13, align 8
  %203 = getelementptr inbounds %struct.w100_gpio_regs, %struct.w100_gpio_regs* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = load i64, i64* @remapped_regs, align 8
  %206 = load i64, i64* @mmGPIO_DATA, align 8
  %207 = add nsw i64 %205, %206
  %208 = call i32 @writel(i32 %204, i64 %207)
  %209 = load %struct.w100_gpio_regs*, %struct.w100_gpio_regs** %13, align 8
  %210 = getelementptr inbounds %struct.w100_gpio_regs, %struct.w100_gpio_regs* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = load i64, i64* @remapped_regs, align 8
  %213 = load i64, i64* @mmGPIO_DATA2, align 8
  %214 = add nsw i64 %212, %213
  %215 = call i32 @writel(i32 %211, i64 %214)
  %216 = load %struct.w100_gpio_regs*, %struct.w100_gpio_regs** %13, align 8
  %217 = getelementptr inbounds %struct.w100_gpio_regs, %struct.w100_gpio_regs* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 4
  %219 = load i64, i64* @remapped_regs, align 8
  %220 = load i64, i64* @mmGPIO_CNTL1, align 8
  %221 = add nsw i64 %219, %220
  %222 = call i32 @writel(i32 %218, i64 %221)
  %223 = load %struct.w100_gpio_regs*, %struct.w100_gpio_regs** %13, align 8
  %224 = getelementptr inbounds %struct.w100_gpio_regs, %struct.w100_gpio_regs* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 4
  %226 = load i64, i64* @remapped_regs, align 8
  %227 = load i64, i64* @mmGPIO_CNTL2, align 8
  %228 = add nsw i64 %226, %227
  %229 = call i32 @writel(i32 %225, i64 %228)
  %230 = load %struct.w100_gpio_regs*, %struct.w100_gpio_regs** %13, align 8
  %231 = getelementptr inbounds %struct.w100_gpio_regs, %struct.w100_gpio_regs* %230, i32 0, i32 4
  %232 = load i32, i32* %231, align 4
  %233 = load i64, i64* @remapped_regs, align 8
  %234 = load i64, i64* @mmGPIO_CNTL3, align 8
  %235 = add nsw i64 %233, %234
  %236 = call i32 @writel(i32 %232, i64 %235)
  %237 = load %struct.w100_gpio_regs*, %struct.w100_gpio_regs** %13, align 8
  %238 = getelementptr inbounds %struct.w100_gpio_regs, %struct.w100_gpio_regs* %237, i32 0, i32 5
  %239 = load i32, i32* %238, align 4
  %240 = load i64, i64* @remapped_regs, align 8
  %241 = load i64, i64* @mmGPIO_CNTL4, align 8
  %242 = add nsw i64 %240, %241
  %243 = call i32 @writel(i32 %239, i64 %242)
  br label %244

244:                                              ; preds = %201, %35
  ret void
}

declare dso_local i32 @w100_soft_reset(...) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i8* @readl(i64) #1

declare dso_local i32 @writeb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
