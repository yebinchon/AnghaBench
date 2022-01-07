; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_fill_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_fill_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CommandList = type { %struct.TYPE_7__, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_7__ = type { i32*, i32, i8*, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, i8*, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.ctlr_info = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@DMA_NONE = common dso_local global i32 0, align 4
@CMD_IOCTL_PEND = common dso_local global i32 0, align 4
@SCSI_CMD_BUSY = common dso_local global i32 0, align 4
@TYPE_CMD = common dso_local global i32 0, align 4
@VPD_PAGE = common dso_local global i32 0, align 4
@ATTR_SIMPLE = common dso_local global i32 0, align 4
@BMIC_READ = common dso_local global i8* null, align 8
@BMIC_WRITE = common dso_local global i8* null, align 8
@BMIC_CACHE_FLUSH = common dso_local global i32 0, align 4
@HPSA_CISS_READ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"unknown command 0x%c\0A\00", align 1
@TYPE_MSG = common dso_local global i32 0, align 4
@HPSA_RESET = common dso_local global i64 0, align 8
@HPSA_TARGET_RESET_TYPE = common dso_local global i64 0, align 8
@HPSA_RESET_TYPE_LUN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"unknown message type %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"unknown command type %d\0A\00", align 1
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.CommandList*, i32, %struct.ctlr_info*, i8*, i64, i32, i8*, i32)* @fill_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_cmd(%struct.CommandList* %0, i32 %1, %struct.ctlr_info* %2, i8* %3, i64 %4, i32 %5, i8* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.CommandList*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ctlr_info*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.CommandList* %0, %struct.CommandList** %10, align 8
  store i32 %1, i32* %11, align 4
  store %struct.ctlr_info* %2, %struct.ctlr_info** %12, align 8
  store i8* %3, i8** %13, align 8
  store i64 %4, i64* %14, align 8
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store i32 %7, i32* %17, align 4
  %19 = load i32, i32* @DMA_NONE, align 4
  store i32 %19, i32* %18, align 4
  %20 = load i32, i32* @CMD_IOCTL_PEND, align 4
  %21 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %22 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @SCSI_CMD_BUSY, align 4
  %24 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %25 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %27 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 3
  store i64 0, i64* %28, align 8
  %29 = load i8*, i8** %13, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %42

31:                                               ; preds = %8
  %32 = load i64, i64* %14, align 8
  %33 = icmp ugt i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %36 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  %38 = call i8* @cpu_to_le16(i32 1)
  %39 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %40 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  store i8* %38, i8** %41, align 8
  br label %50

42:                                               ; preds = %31, %8
  %43 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %44 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  store i32 0, i32* %45, align 8
  %46 = call i8* @cpu_to_le16(i32 0)
  %47 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %48 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  store i8* %46, i8** %49, align 8
  br label %50

50:                                               ; preds = %42, %34
  %51 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %52 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i8*, i8** %16, align 8
  %57 = call i32 @memcpy(i32 %55, i8* %56, i32 8)
  %58 = load i32, i32* %17, align 4
  %59 = load i32, i32* @TYPE_CMD, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %628

61:                                               ; preds = %50
  %62 = load i32, i32* %11, align 4
  switch i32 %62, label %619 [
    i32 136, label %63
    i32 132, label %107
    i32 134, label %153
    i32 133, label %153
    i32 143, label %207
    i32 140, label %232
    i32 139, label %257
    i32 131, label %300
    i32 137, label %313
    i32 144, label %374
    i32 145, label %417
    i32 141, label %460
    i32 142, label %503
    i32 146, label %546
  ]

63:                                               ; preds = %61
  %64 = load i32, i32* %15, align 4
  %65 = load i32, i32* @VPD_PAGE, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %63
  %69 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %70 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  store i32 1, i32* %73, align 4
  %74 = load i32, i32* %15, align 4
  %75 = and i32 %74, 255
  %76 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %77 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 2
  store i32 %75, i32* %80, align 4
  br label %81

81:                                               ; preds = %68, %63
  %82 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %83 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  store i32 6, i32* %84, align 8
  %85 = load i32, i32* %17, align 4
  %86 = load i32, i32* @ATTR_SIMPLE, align 4
  %87 = call i8* @TYPE_ATTR_DIR(i32 %85, i32 %86, i32 129)
  %88 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %89 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 2
  store i8* %87, i8** %90, align 8
  %91 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %92 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 3
  store i32 0, i32* %93, align 8
  %94 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %95 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  store i32 136, i32* %98, align 4
  %99 = load i64, i64* %14, align 8
  %100 = and i64 %99, 255
  %101 = trunc i64 %100 to i32
  %102 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %103 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 4
  store i32 %101, i32* %106, align 4
  br label %627

107:                                              ; preds = %61
  %108 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %109 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  store i32 6, i32* %110, align 8
  %111 = load i32, i32* %17, align 4
  %112 = load i32, i32* @ATTR_SIMPLE, align 4
  %113 = call i8* @TYPE_ATTR_DIR(i32 %111, i32 %112, i32 129)
  %114 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %115 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 2
  store i8* %113, i8** %116, align 8
  %117 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %118 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 3
  store i32 0, i32* %119, align 8
  %120 = load i32, i32* %11, align 4
  %121 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %122 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 0
  store i32 %120, i32* %125, align 4
  %126 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %127 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 1
  store i32 1, i32* %130, align 4
  %131 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %132 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 2
  store i32 1, i32* %135, align 4
  %136 = load i64, i64* %14, align 8
  %137 = lshr i64 %136, 8
  %138 = and i64 %137, 255
  %139 = trunc i64 %138 to i32
  %140 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %141 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 3
  store i32 %139, i32* %144, align 4
  %145 = load i64, i64* %14, align 8
  %146 = and i64 %145, 255
  %147 = trunc i64 %146 to i32
  %148 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %149 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 4
  store i32 %147, i32* %152, align 4
  br label %627

153:                                              ; preds = %61, %61
  %154 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %155 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 1
  store i32 12, i32* %156, align 8
  %157 = load i32, i32* %17, align 4
  %158 = load i32, i32* @ATTR_SIMPLE, align 4
  %159 = call i8* @TYPE_ATTR_DIR(i32 %157, i32 %158, i32 129)
  %160 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %161 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 2
  store i8* %159, i8** %162, align 8
  %163 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %164 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 3
  store i32 0, i32* %165, align 8
  %166 = load i32, i32* %11, align 4
  %167 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %168 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 0
  store i32 %166, i32* %171, align 4
  %172 = load i64, i64* %14, align 8
  %173 = lshr i64 %172, 24
  %174 = and i64 %173, 255
  %175 = trunc i64 %174 to i32
  %176 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %177 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 0
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 6
  store i32 %175, i32* %180, align 4
  %181 = load i64, i64* %14, align 8
  %182 = lshr i64 %181, 16
  %183 = and i64 %182, 255
  %184 = trunc i64 %183 to i32
  %185 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %186 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 0
  %188 = load i32*, i32** %187, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 7
  store i32 %184, i32* %189, align 4
  %190 = load i64, i64* %14, align 8
  %191 = lshr i64 %190, 8
  %192 = and i64 %191, 255
  %193 = trunc i64 %192 to i32
  %194 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %195 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 0
  %197 = load i32*, i32** %196, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 8
  store i32 %193, i32* %198, align 4
  %199 = load i64, i64* %14, align 8
  %200 = and i64 %199, 255
  %201 = trunc i64 %200 to i32
  %202 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %203 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 0
  %205 = load i32*, i32** %204, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 9
  store i32 %201, i32* %206, align 4
  br label %627

207:                                              ; preds = %61
  %208 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %209 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 1
  store i32 16, i32* %210, align 8
  %211 = load i32, i32* %17, align 4
  %212 = load i32, i32* @ATTR_SIMPLE, align 4
  %213 = call i8* @TYPE_ATTR_DIR(i32 %211, i32 %212, i32 129)
  %214 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %215 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 2
  store i8* %213, i8** %216, align 8
  %217 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %218 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 3
  store i32 0, i32* %219, align 8
  %220 = load i8*, i8** @BMIC_READ, align 8
  %221 = ptrtoint i8* %220 to i32
  %222 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %223 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i32 0, i32 0
  %225 = load i32*, i32** %224, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 0
  store i32 %221, i32* %226, align 4
  %227 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %228 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %228, i32 0, i32 0
  %230 = load i32*, i32** %229, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 6
  store i32 143, i32* %231, align 4
  br label %627

232:                                              ; preds = %61
  %233 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %234 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i32 0, i32 1
  store i32 16, i32* %235, align 8
  %236 = load i32, i32* %17, align 4
  %237 = load i32, i32* @ATTR_SIMPLE, align 4
  %238 = call i8* @TYPE_ATTR_DIR(i32 %236, i32 %237, i32 128)
  %239 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %240 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %240, i32 0, i32 2
  store i8* %238, i8** %241, align 8
  %242 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %243 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i32 0, i32 3
  store i32 0, i32* %244, align 8
  %245 = load i8*, i8** @BMIC_WRITE, align 8
  %246 = ptrtoint i8* %245 to i32
  %247 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %248 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 0
  %250 = load i32*, i32** %249, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 0
  store i32 %246, i32* %251, align 4
  %252 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %253 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %253, i32 0, i32 0
  %255 = load i32*, i32** %254, align 8
  %256 = getelementptr inbounds i32, i32* %255, i64 6
  store i32 140, i32* %256, align 4
  br label %627

257:                                              ; preds = %61
  %258 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %259 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %259, i32 0, i32 1
  store i32 12, i32* %260, align 8
  %261 = load i32, i32* %17, align 4
  %262 = load i32, i32* @ATTR_SIMPLE, align 4
  %263 = call i8* @TYPE_ATTR_DIR(i32 %261, i32 %262, i32 128)
  %264 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %265 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %265, i32 0, i32 2
  store i8* %263, i8** %266, align 8
  %267 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %268 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %268, i32 0, i32 3
  store i32 0, i32* %269, align 8
  %270 = load i8*, i8** @BMIC_WRITE, align 8
  %271 = ptrtoint i8* %270 to i32
  %272 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %273 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %273, i32 0, i32 0
  %275 = load i32*, i32** %274, align 8
  %276 = getelementptr inbounds i32, i32* %275, i64 0
  store i32 %271, i32* %276, align 4
  %277 = load i32, i32* @BMIC_CACHE_FLUSH, align 4
  %278 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %279 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %279, i32 0, i32 0
  %281 = load i32*, i32** %280, align 8
  %282 = getelementptr inbounds i32, i32* %281, i64 6
  store i32 %277, i32* %282, align 4
  %283 = load i64, i64* %14, align 8
  %284 = lshr i64 %283, 8
  %285 = and i64 %284, 255
  %286 = trunc i64 %285 to i32
  %287 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %288 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %288, i32 0, i32 0
  %290 = load i32*, i32** %289, align 8
  %291 = getelementptr inbounds i32, i32* %290, i64 7
  store i32 %286, i32* %291, align 4
  %292 = load i64, i64* %14, align 8
  %293 = and i64 %292, 255
  %294 = trunc i64 %293 to i32
  %295 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %296 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %296, i32 0, i32 0
  %298 = load i32*, i32** %297, align 8
  %299 = getelementptr inbounds i32, i32* %298, i64 8
  store i32 %294, i32* %299, align 4
  br label %627

300:                                              ; preds = %61
  %301 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %302 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %301, i32 0, i32 0
  %303 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %302, i32 0, i32 1
  store i32 6, i32* %303, align 8
  %304 = load i32, i32* %17, align 4
  %305 = load i32, i32* @ATTR_SIMPLE, align 4
  %306 = call i8* @TYPE_ATTR_DIR(i32 %304, i32 %305, i32 130)
  %307 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %308 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %308, i32 0, i32 2
  store i8* %306, i8** %309, align 8
  %310 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %311 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %311, i32 0, i32 3
  store i32 0, i32* %312, align 8
  br label %627

313:                                              ; preds = %61
  %314 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %315 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %315, i32 0, i32 1
  store i32 12, i32* %316, align 8
  %317 = load i32, i32* %17, align 4
  %318 = load i32, i32* @ATTR_SIMPLE, align 4
  %319 = call i8* @TYPE_ATTR_DIR(i32 %317, i32 %318, i32 129)
  %320 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %321 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %320, i32 0, i32 0
  %322 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %321, i32 0, i32 2
  store i8* %319, i8** %322, align 8
  %323 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %324 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %323, i32 0, i32 0
  %325 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %324, i32 0, i32 3
  store i32 0, i32* %325, align 8
  %326 = load i64, i64* @HPSA_CISS_READ, align 8
  %327 = trunc i64 %326 to i32
  %328 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %329 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %328, i32 0, i32 0
  %330 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %329, i32 0, i32 0
  %331 = load i32*, i32** %330, align 8
  %332 = getelementptr inbounds i32, i32* %331, i64 0
  store i32 %327, i32* %332, align 4
  %333 = load i32, i32* %11, align 4
  %334 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %335 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %334, i32 0, i32 0
  %336 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %335, i32 0, i32 0
  %337 = load i32*, i32** %336, align 8
  %338 = getelementptr inbounds i32, i32* %337, i64 1
  store i32 %333, i32* %338, align 4
  %339 = load i64, i64* %14, align 8
  %340 = lshr i64 %339, 24
  %341 = and i64 %340, 255
  %342 = trunc i64 %341 to i32
  %343 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %344 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %343, i32 0, i32 0
  %345 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %344, i32 0, i32 0
  %346 = load i32*, i32** %345, align 8
  %347 = getelementptr inbounds i32, i32* %346, i64 6
  store i32 %342, i32* %347, align 4
  %348 = load i64, i64* %14, align 8
  %349 = lshr i64 %348, 16
  %350 = and i64 %349, 255
  %351 = trunc i64 %350 to i32
  %352 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %353 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %352, i32 0, i32 0
  %354 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %353, i32 0, i32 0
  %355 = load i32*, i32** %354, align 8
  %356 = getelementptr inbounds i32, i32* %355, i64 7
  store i32 %351, i32* %356, align 4
  %357 = load i64, i64* %14, align 8
  %358 = lshr i64 %357, 8
  %359 = and i64 %358, 255
  %360 = trunc i64 %359 to i32
  %361 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %362 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %361, i32 0, i32 0
  %363 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %362, i32 0, i32 0
  %364 = load i32*, i32** %363, align 8
  %365 = getelementptr inbounds i32, i32* %364, i64 8
  store i32 %360, i32* %365, align 4
  %366 = load i64, i64* %14, align 8
  %367 = and i64 %366, 255
  %368 = trunc i64 %367 to i32
  %369 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %370 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %369, i32 0, i32 0
  %371 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %370, i32 0, i32 0
  %372 = load i32*, i32** %371, align 8
  %373 = getelementptr inbounds i32, i32* %372, i64 9
  store i32 %368, i32* %373, align 4
  br label %627

374:                                              ; preds = %61
  %375 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %376 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %375, i32 0, i32 0
  %377 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %376, i32 0, i32 1
  store i32 10, i32* %377, align 8
  %378 = load i32, i32* %17, align 4
  %379 = load i32, i32* @ATTR_SIMPLE, align 4
  %380 = call i8* @TYPE_ATTR_DIR(i32 %378, i32 %379, i32 129)
  %381 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %382 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %381, i32 0, i32 0
  %383 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %382, i32 0, i32 2
  store i8* %380, i8** %383, align 8
  %384 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %385 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %384, i32 0, i32 0
  %386 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %385, i32 0, i32 3
  store i32 0, i32* %386, align 8
  %387 = load i8*, i8** @BMIC_READ, align 8
  %388 = ptrtoint i8* %387 to i32
  %389 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %390 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %389, i32 0, i32 0
  %391 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %390, i32 0, i32 0
  %392 = load i32*, i32** %391, align 8
  %393 = getelementptr inbounds i32, i32* %392, i64 0
  store i32 %388, i32* %393, align 4
  %394 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %395 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %394, i32 0, i32 0
  %396 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %395, i32 0, i32 0
  %397 = load i32*, i32** %396, align 8
  %398 = getelementptr inbounds i32, i32* %397, i64 6
  store i32 144, i32* %398, align 4
  %399 = load i64, i64* %14, align 8
  %400 = lshr i64 %399, 16
  %401 = and i64 %400, 255
  %402 = trunc i64 %401 to i32
  %403 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %404 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %403, i32 0, i32 0
  %405 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %404, i32 0, i32 0
  %406 = load i32*, i32** %405, align 8
  %407 = getelementptr inbounds i32, i32* %406, i64 7
  store i32 %402, i32* %407, align 4
  %408 = load i64, i64* %14, align 8
  %409 = lshr i64 %408, 8
  %410 = and i64 %409, 255
  %411 = trunc i64 %410 to i32
  %412 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %413 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %412, i32 0, i32 0
  %414 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %413, i32 0, i32 0
  %415 = load i32*, i32** %414, align 8
  %416 = getelementptr inbounds i32, i32* %415, i64 8
  store i32 %411, i32* %416, align 4
  br label %627

417:                                              ; preds = %61
  %418 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %419 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %418, i32 0, i32 0
  %420 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %419, i32 0, i32 1
  store i32 10, i32* %420, align 8
  %421 = load i32, i32* %17, align 4
  %422 = load i32, i32* @ATTR_SIMPLE, align 4
  %423 = call i8* @TYPE_ATTR_DIR(i32 %421, i32 %422, i32 129)
  %424 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %425 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %424, i32 0, i32 0
  %426 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %425, i32 0, i32 2
  store i8* %423, i8** %426, align 8
  %427 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %428 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %427, i32 0, i32 0
  %429 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %428, i32 0, i32 3
  store i32 0, i32* %429, align 8
  %430 = load i8*, i8** @BMIC_READ, align 8
  %431 = ptrtoint i8* %430 to i32
  %432 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %433 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %432, i32 0, i32 0
  %434 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %433, i32 0, i32 0
  %435 = load i32*, i32** %434, align 8
  %436 = getelementptr inbounds i32, i32* %435, i64 0
  store i32 %431, i32* %436, align 4
  %437 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %438 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %437, i32 0, i32 0
  %439 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %438, i32 0, i32 0
  %440 = load i32*, i32** %439, align 8
  %441 = getelementptr inbounds i32, i32* %440, i64 6
  store i32 145, i32* %441, align 4
  %442 = load i64, i64* %14, align 8
  %443 = lshr i64 %442, 16
  %444 = and i64 %443, 255
  %445 = trunc i64 %444 to i32
  %446 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %447 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %446, i32 0, i32 0
  %448 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %447, i32 0, i32 0
  %449 = load i32*, i32** %448, align 8
  %450 = getelementptr inbounds i32, i32* %449, i64 7
  store i32 %445, i32* %450, align 4
  %451 = load i64, i64* %14, align 8
  %452 = lshr i64 %451, 8
  %453 = and i64 %452, 255
  %454 = trunc i64 %453 to i32
  %455 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %456 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %455, i32 0, i32 0
  %457 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %456, i32 0, i32 0
  %458 = load i32*, i32** %457, align 8
  %459 = getelementptr inbounds i32, i32* %458, i64 8
  store i32 %454, i32* %459, align 4
  br label %627

460:                                              ; preds = %61
  %461 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %462 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %461, i32 0, i32 0
  %463 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %462, i32 0, i32 1
  store i32 10, i32* %463, align 8
  %464 = load i32, i32* %17, align 4
  %465 = load i32, i32* @ATTR_SIMPLE, align 4
  %466 = call i8* @TYPE_ATTR_DIR(i32 %464, i32 %465, i32 129)
  %467 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %468 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %467, i32 0, i32 0
  %469 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %468, i32 0, i32 2
  store i8* %466, i8** %469, align 8
  %470 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %471 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %470, i32 0, i32 0
  %472 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %471, i32 0, i32 3
  store i32 0, i32* %472, align 8
  %473 = load i8*, i8** @BMIC_READ, align 8
  %474 = ptrtoint i8* %473 to i32
  %475 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %476 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %475, i32 0, i32 0
  %477 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %476, i32 0, i32 0
  %478 = load i32*, i32** %477, align 8
  %479 = getelementptr inbounds i32, i32* %478, i64 0
  store i32 %474, i32* %479, align 4
  %480 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %481 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %480, i32 0, i32 0
  %482 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %481, i32 0, i32 0
  %483 = load i32*, i32** %482, align 8
  %484 = getelementptr inbounds i32, i32* %483, i64 6
  store i32 141, i32* %484, align 4
  %485 = load i64, i64* %14, align 8
  %486 = lshr i64 %485, 16
  %487 = and i64 %486, 255
  %488 = trunc i64 %487 to i32
  %489 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %490 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %489, i32 0, i32 0
  %491 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %490, i32 0, i32 0
  %492 = load i32*, i32** %491, align 8
  %493 = getelementptr inbounds i32, i32* %492, i64 7
  store i32 %488, i32* %493, align 4
  %494 = load i64, i64* %14, align 8
  %495 = lshr i64 %494, 8
  %496 = and i64 %495, 255
  %497 = trunc i64 %496 to i32
  %498 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %499 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %498, i32 0, i32 0
  %500 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %499, i32 0, i32 0
  %501 = load i32*, i32** %500, align 8
  %502 = getelementptr inbounds i32, i32* %501, i64 8
  store i32 %497, i32* %502, align 4
  br label %627

503:                                              ; preds = %61
  %504 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %505 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %504, i32 0, i32 0
  %506 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %505, i32 0, i32 1
  store i32 10, i32* %506, align 8
  %507 = load i32, i32* %17, align 4
  %508 = load i32, i32* @ATTR_SIMPLE, align 4
  %509 = call i8* @TYPE_ATTR_DIR(i32 %507, i32 %508, i32 129)
  %510 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %511 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %510, i32 0, i32 0
  %512 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %511, i32 0, i32 2
  store i8* %509, i8** %512, align 8
  %513 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %514 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %513, i32 0, i32 0
  %515 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %514, i32 0, i32 3
  store i32 0, i32* %515, align 8
  %516 = load i8*, i8** @BMIC_READ, align 8
  %517 = ptrtoint i8* %516 to i32
  %518 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %519 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %518, i32 0, i32 0
  %520 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %519, i32 0, i32 0
  %521 = load i32*, i32** %520, align 8
  %522 = getelementptr inbounds i32, i32* %521, i64 0
  store i32 %517, i32* %522, align 4
  %523 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %524 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %523, i32 0, i32 0
  %525 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %524, i32 0, i32 0
  %526 = load i32*, i32** %525, align 8
  %527 = getelementptr inbounds i32, i32* %526, i64 6
  store i32 142, i32* %527, align 4
  %528 = load i64, i64* %14, align 8
  %529 = lshr i64 %528, 16
  %530 = and i64 %529, 255
  %531 = trunc i64 %530 to i32
  %532 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %533 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %532, i32 0, i32 0
  %534 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %533, i32 0, i32 0
  %535 = load i32*, i32** %534, align 8
  %536 = getelementptr inbounds i32, i32* %535, i64 7
  store i32 %531, i32* %536, align 4
  %537 = load i64, i64* %14, align 8
  %538 = lshr i64 %537, 8
  %539 = and i64 %538, 255
  %540 = trunc i64 %539 to i32
  %541 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %542 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %541, i32 0, i32 0
  %543 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %542, i32 0, i32 0
  %544 = load i32*, i32** %543, align 8
  %545 = getelementptr inbounds i32, i32* %544, i64 8
  store i32 %540, i32* %545, align 4
  br label %627

546:                                              ; preds = %61
  %547 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %548 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %547, i32 0, i32 0
  %549 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %548, i32 0, i32 1
  store i32 10, i32* %549, align 8
  %550 = load i32, i32* %17, align 4
  %551 = load i32, i32* @ATTR_SIMPLE, align 4
  %552 = call i8* @TYPE_ATTR_DIR(i32 %550, i32 %551, i32 129)
  %553 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %554 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %553, i32 0, i32 0
  %555 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %554, i32 0, i32 2
  store i8* %552, i8** %555, align 8
  %556 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %557 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %556, i32 0, i32 0
  %558 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %557, i32 0, i32 3
  store i32 0, i32* %558, align 8
  %559 = load i8*, i8** @BMIC_READ, align 8
  %560 = ptrtoint i8* %559 to i32
  %561 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %562 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %561, i32 0, i32 0
  %563 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %562, i32 0, i32 0
  %564 = load i32*, i32** %563, align 8
  %565 = getelementptr inbounds i32, i32* %564, i64 0
  store i32 %560, i32* %565, align 4
  %566 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %567 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %566, i32 0, i32 0
  %568 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %567, i32 0, i32 0
  %569 = load i32*, i32** %568, align 8
  %570 = getelementptr inbounds i32, i32* %569, i64 1
  store i32 0, i32* %570, align 4
  %571 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %572 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %571, i32 0, i32 0
  %573 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %572, i32 0, i32 0
  %574 = load i32*, i32** %573, align 8
  %575 = getelementptr inbounds i32, i32* %574, i64 2
  store i32 0, i32* %575, align 4
  %576 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %577 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %576, i32 0, i32 0
  %578 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %577, i32 0, i32 0
  %579 = load i32*, i32** %578, align 8
  %580 = getelementptr inbounds i32, i32* %579, i64 3
  store i32 0, i32* %580, align 4
  %581 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %582 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %581, i32 0, i32 0
  %583 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %582, i32 0, i32 0
  %584 = load i32*, i32** %583, align 8
  %585 = getelementptr inbounds i32, i32* %584, i64 4
  store i32 0, i32* %585, align 4
  %586 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %587 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %586, i32 0, i32 0
  %588 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %587, i32 0, i32 0
  %589 = load i32*, i32** %588, align 8
  %590 = getelementptr inbounds i32, i32* %589, i64 5
  store i32 0, i32* %590, align 4
  %591 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %592 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %591, i32 0, i32 0
  %593 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %592, i32 0, i32 0
  %594 = load i32*, i32** %593, align 8
  %595 = getelementptr inbounds i32, i32* %594, i64 6
  store i32 146, i32* %595, align 4
  %596 = load i64, i64* %14, align 8
  %597 = lshr i64 %596, 16
  %598 = and i64 %597, 255
  %599 = trunc i64 %598 to i32
  %600 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %601 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %600, i32 0, i32 0
  %602 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %601, i32 0, i32 0
  %603 = load i32*, i32** %602, align 8
  %604 = getelementptr inbounds i32, i32* %603, i64 7
  store i32 %599, i32* %604, align 4
  %605 = load i64, i64* %14, align 8
  %606 = lshr i64 %605, 8
  %607 = and i64 %606, 255
  %608 = trunc i64 %607 to i32
  %609 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %610 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %609, i32 0, i32 0
  %611 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %610, i32 0, i32 0
  %612 = load i32*, i32** %611, align 8
  %613 = getelementptr inbounds i32, i32* %612, i64 8
  store i32 %608, i32* %613, align 4
  %614 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %615 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %614, i32 0, i32 0
  %616 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %615, i32 0, i32 0
  %617 = load i32*, i32** %616, align 8
  %618 = getelementptr inbounds i32, i32* %617, i64 9
  store i32 0, i32* %618, align 4
  br label %627

619:                                              ; preds = %61
  %620 = load %struct.ctlr_info*, %struct.ctlr_info** %12, align 8
  %621 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %620, i32 0, i32 0
  %622 = load %struct.TYPE_8__*, %struct.TYPE_8__** %621, align 8
  %623 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %622, i32 0, i32 0
  %624 = load i32, i32* %11, align 4
  %625 = call i32 @dev_warn(i32* %623, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %624)
  %626 = call i32 (...) @BUG()
  br label %627

627:                                              ; preds = %619, %546, %503, %460, %417, %374, %313, %300, %257, %232, %207, %153, %107, %81
  br label %758

628:                                              ; preds = %50
  %629 = load i32, i32* %17, align 4
  %630 = load i32, i32* @TYPE_MSG, align 4
  %631 = icmp eq i32 %629, %630
  br i1 %631, label %632, label %749

632:                                              ; preds = %628
  %633 = load i32, i32* %11, align 4
  switch i32 %633, label %740 [
    i32 135, label %634
    i32 138, label %688
  ]

634:                                              ; preds = %632
  %635 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %636 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %635, i32 0, i32 0
  %637 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %636, i32 0, i32 1
  store i32 16, i32* %637, align 8
  %638 = load i32, i32* %17, align 4
  %639 = load i32, i32* @ATTR_SIMPLE, align 4
  %640 = call i8* @TYPE_ATTR_DIR(i32 %638, i32 %639, i32 130)
  %641 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %642 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %641, i32 0, i32 0
  %643 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %642, i32 0, i32 2
  store i8* %640, i8** %643, align 8
  %644 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %645 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %644, i32 0, i32 0
  %646 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %645, i32 0, i32 3
  store i32 0, i32* %646, align 8
  %647 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %648 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %647, i32 0, i32 0
  %649 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %648, i32 0, i32 0
  %650 = load i32*, i32** %649, align 8
  %651 = getelementptr inbounds i32, i32* %650, i64 0
  %652 = bitcast i32* %651 to i64*
  %653 = call i32 @memset(i64* %652, i32 0, i32 8)
  %654 = load i64, i64* @HPSA_RESET, align 8
  %655 = trunc i64 %654 to i32
  %656 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %657 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %656, i32 0, i32 0
  %658 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %657, i32 0, i32 0
  %659 = load i32*, i32** %658, align 8
  %660 = getelementptr inbounds i32, i32* %659, i64 0
  store i32 %655, i32* %660, align 4
  %661 = load i64, i64* @HPSA_TARGET_RESET_TYPE, align 8
  %662 = trunc i64 %661 to i32
  %663 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %664 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %663, i32 0, i32 0
  %665 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %664, i32 0, i32 0
  %666 = load i32*, i32** %665, align 8
  %667 = getelementptr inbounds i32, i32* %666, i64 1
  store i32 %662, i32* %667, align 4
  %668 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %669 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %668, i32 0, i32 0
  %670 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %669, i32 0, i32 0
  %671 = load i32*, i32** %670, align 8
  %672 = getelementptr inbounds i32, i32* %671, i64 4
  store i32 0, i32* %672, align 4
  %673 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %674 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %673, i32 0, i32 0
  %675 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %674, i32 0, i32 0
  %676 = load i32*, i32** %675, align 8
  %677 = getelementptr inbounds i32, i32* %676, i64 5
  store i32 0, i32* %677, align 4
  %678 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %679 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %678, i32 0, i32 0
  %680 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %679, i32 0, i32 0
  %681 = load i32*, i32** %680, align 8
  %682 = getelementptr inbounds i32, i32* %681, i64 6
  store i32 0, i32* %682, align 4
  %683 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %684 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %683, i32 0, i32 0
  %685 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %684, i32 0, i32 0
  %686 = load i32*, i32** %685, align 8
  %687 = getelementptr inbounds i32, i32* %686, i64 7
  store i32 0, i32* %687, align 4
  br label %748

688:                                              ; preds = %632
  %689 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %690 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %689, i32 0, i32 0
  %691 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %690, i32 0, i32 1
  store i32 16, i32* %691, align 8
  %692 = load i32, i32* %17, align 4
  %693 = load i32, i32* @ATTR_SIMPLE, align 4
  %694 = call i8* @TYPE_ATTR_DIR(i32 %692, i32 %693, i32 130)
  %695 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %696 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %695, i32 0, i32 0
  %697 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %696, i32 0, i32 2
  store i8* %694, i8** %697, align 8
  %698 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %699 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %698, i32 0, i32 0
  %700 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %699, i32 0, i32 3
  store i32 0, i32* %700, align 8
  %701 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %702 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %701, i32 0, i32 0
  %703 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %702, i32 0, i32 0
  %704 = load i32*, i32** %703, align 8
  %705 = getelementptr inbounds i32, i32* %704, i64 0
  %706 = bitcast i32* %705 to i64*
  %707 = call i32 @memset(i64* %706, i32 0, i32 8)
  %708 = load i32, i32* %11, align 4
  %709 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %710 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %709, i32 0, i32 0
  %711 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %710, i32 0, i32 0
  %712 = load i32*, i32** %711, align 8
  %713 = getelementptr inbounds i32, i32* %712, i64 0
  store i32 %708, i32* %713, align 4
  %714 = load i32, i32* @HPSA_RESET_TYPE_LUN, align 4
  %715 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %716 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %715, i32 0, i32 0
  %717 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %716, i32 0, i32 0
  %718 = load i32*, i32** %717, align 8
  %719 = getelementptr inbounds i32, i32* %718, i64 1
  store i32 %714, i32* %719, align 4
  %720 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %721 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %720, i32 0, i32 0
  %722 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %721, i32 0, i32 0
  %723 = load i32*, i32** %722, align 8
  %724 = getelementptr inbounds i32, i32* %723, i64 4
  store i32 0, i32* %724, align 4
  %725 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %726 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %725, i32 0, i32 0
  %727 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %726, i32 0, i32 0
  %728 = load i32*, i32** %727, align 8
  %729 = getelementptr inbounds i32, i32* %728, i64 5
  store i32 0, i32* %729, align 4
  %730 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %731 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %730, i32 0, i32 0
  %732 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %731, i32 0, i32 0
  %733 = load i32*, i32** %732, align 8
  %734 = getelementptr inbounds i32, i32* %733, i64 6
  store i32 0, i32* %734, align 4
  %735 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %736 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %735, i32 0, i32 0
  %737 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %736, i32 0, i32 0
  %738 = load i32*, i32** %737, align 8
  %739 = getelementptr inbounds i32, i32* %738, i64 7
  store i32 0, i32* %739, align 4
  br label %748

740:                                              ; preds = %632
  %741 = load %struct.ctlr_info*, %struct.ctlr_info** %12, align 8
  %742 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %741, i32 0, i32 0
  %743 = load %struct.TYPE_8__*, %struct.TYPE_8__** %742, align 8
  %744 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %743, i32 0, i32 0
  %745 = load i32, i32* %11, align 4
  %746 = call i32 @dev_warn(i32* %744, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %745)
  %747 = call i32 (...) @BUG()
  br label %748

748:                                              ; preds = %740, %688, %634
  br label %757

749:                                              ; preds = %628
  %750 = load %struct.ctlr_info*, %struct.ctlr_info** %12, align 8
  %751 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %750, i32 0, i32 0
  %752 = load %struct.TYPE_8__*, %struct.TYPE_8__** %751, align 8
  %753 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %752, i32 0, i32 0
  %754 = load i32, i32* %17, align 4
  %755 = call i32 @dev_warn(i32* %753, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %754)
  %756 = call i32 (...) @BUG()
  br label %757

757:                                              ; preds = %749, %748
  br label %758

758:                                              ; preds = %757, %627
  %759 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %760 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %759, i32 0, i32 0
  %761 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %760, i32 0, i32 2
  %762 = load i8*, i8** %761, align 8
  %763 = call i32 @GET_DIR(i8* %762)
  switch i32 %763, label %770 [
    i32 129, label %764
    i32 128, label %766
    i32 130, label %768
  ]

764:                                              ; preds = %758
  %765 = load i32, i32* @DMA_FROM_DEVICE, align 4
  store i32 %765, i32* %18, align 4
  br label %772

766:                                              ; preds = %758
  %767 = load i32, i32* @DMA_TO_DEVICE, align 4
  store i32 %767, i32* %18, align 4
  br label %772

768:                                              ; preds = %758
  %769 = load i32, i32* @DMA_NONE, align 4
  store i32 %769, i32* %18, align 4
  br label %772

770:                                              ; preds = %758
  %771 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  store i32 %771, i32* %18, align 4
  br label %772

772:                                              ; preds = %770, %768, %766, %764
  %773 = load %struct.ctlr_info*, %struct.ctlr_info** %12, align 8
  %774 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %773, i32 0, i32 0
  %775 = load %struct.TYPE_8__*, %struct.TYPE_8__** %774, align 8
  %776 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %777 = load i8*, i8** %13, align 8
  %778 = load i64, i64* %14, align 8
  %779 = load i32, i32* %18, align 4
  %780 = call i64 @hpsa_map_one(%struct.TYPE_8__* %775, %struct.CommandList* %776, i8* %777, i64 %778, i32 %779)
  %781 = icmp ne i64 %780, 0
  br i1 %781, label %782, label %783

782:                                              ; preds = %772
  store i32 -1, i32* %9, align 4
  br label %784

783:                                              ; preds = %772
  store i32 0, i32* %9, align 4
  br label %784

784:                                              ; preds = %783, %782
  %785 = load i32, i32* %9, align 4
  ret i32 %785
}

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i8* @TYPE_ATTR_DIR(i32, i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @GET_DIR(i8*) #1

declare dso_local i64 @hpsa_map_one(%struct.TYPE_8__*, %struct.CommandList*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
