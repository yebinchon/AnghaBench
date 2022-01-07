; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_atp870u.c_atp880_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_atp870u.c_atp880_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32, i8, i32, i32 }
%struct.atp_unit = type { i8*, i32*, i32*, i32**, i32*, i64*, i64*, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@PCI_LATENCY_TIMER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"ACARD AEC-67160 PCI Ultra3 LVD Host Adapter: IO:%lx, IRQ:%d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Scsi_Host*)* @atp880_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atp880_init(%struct.Scsi_Host* %0) #0 {
  %2 = alloca %struct.Scsi_Host*, align 8
  %3 = alloca %struct.atp_unit*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %2, align 8
  %9 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %10 = call %struct.atp_unit* @shost_priv(%struct.Scsi_Host* %9)
  store %struct.atp_unit* %10, %struct.atp_unit** %3, align 8
  %11 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %12 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %11, i32 0, i32 7
  %13 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  store %struct.pci_dev* %13, %struct.pci_dev** %4, align 8
  %14 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %15 = load i32, i32* @PCI_LATENCY_TIMER, align 4
  %16 = call i32 @pci_write_config_byte(%struct.pci_dev* %14, i32 %15, i32 128)
  %17 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %18 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 64
  %21 = sext i32 %20 to i64
  %22 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %23 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %22, i32 0, i32 6
  %24 = load i64*, i64** %23, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 0
  store i64 %21, i64* %25, align 8
  %26 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %27 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 40
  %30 = sext i32 %29 to i64
  %31 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %32 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %31, i32 0, i32 5
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 0
  store i64 %30, i64* %34, align 8
  %35 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %36 = call i32 @atp_readb_base(%struct.atp_unit* %35, i32 57)
  %37 = ashr i32 %36, 4
  %38 = trunc i32 %37 to i8
  store i8 %38, i8* %7, align 1
  %39 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %40 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %39, i32 0, i32 0
  %41 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %42 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %45 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @dev_info(i32* %40, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %46)
  %48 = load i8, i8* %7, align 1
  %49 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %50 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 0
  store i8 %48, i8* %52, align 1
  %53 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %54 = call i32 @atp_readb_base(%struct.atp_unit* %53, i32 53)
  %55 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %56 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  store i32 %54, i32* %58, align 4
  %59 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %60 = call i32 @atp_readw_base(%struct.atp_unit* %59, i32 60)
  %61 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %62 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  store i32 %60, i32* %64, align 4
  store i32 16137, i32* %8, align 4
  br label %65

65:                                               ; preds = %78, %1
  %66 = load i32, i32* %8, align 4
  %67 = icmp ult i32 %66, 16384
  br i1 %67, label %68, label %272

68:                                               ; preds = %65
  store i8 0, i8* %6, align 1
  %69 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @atp_writew_base(%struct.atp_unit* %69, i32 52, i32 %70)
  %72 = load i32, i32* %8, align 4
  %73 = add i32 %72, 2
  store i32 %73, i32* %8, align 4
  %74 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %75 = call i32 @atp_readb_base(%struct.atp_unit* %74, i32 48)
  %76 = icmp eq i32 %75, 255
  br i1 %76, label %77, label %78

77:                                               ; preds = %68
  br label %272

78:                                               ; preds = %68
  %79 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %80 = call i32 @atp_readb_base(%struct.atp_unit* %79, i32 48)
  %81 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %82 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %81, i32 0, i32 3
  %83 = load i32**, i32*** %82, align 8
  %84 = getelementptr inbounds i32*, i32** %83, i64 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i8, i8* %6, align 1
  %87 = add i8 %86, 1
  store i8 %87, i8* %6, align 1
  %88 = zext i8 %86 to i64
  %89 = getelementptr inbounds i32, i32* %85, i64 %88
  store i32 %80, i32* %89, align 4
  %90 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %91 = call i32 @atp_readb_base(%struct.atp_unit* %90, i32 49)
  %92 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %93 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %92, i32 0, i32 3
  %94 = load i32**, i32*** %93, align 8
  %95 = getelementptr inbounds i32*, i32** %94, i64 0
  %96 = load i32*, i32** %95, align 8
  %97 = load i8, i8* %6, align 1
  %98 = add i8 %97, 1
  store i8 %98, i8* %6, align 1
  %99 = zext i8 %97 to i64
  %100 = getelementptr inbounds i32, i32* %96, i64 %99
  store i32 %91, i32* %100, align 4
  %101 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %102 = call i32 @atp_readb_base(%struct.atp_unit* %101, i32 50)
  %103 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %104 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %103, i32 0, i32 3
  %105 = load i32**, i32*** %104, align 8
  %106 = getelementptr inbounds i32*, i32** %105, i64 0
  %107 = load i32*, i32** %106, align 8
  %108 = load i8, i8* %6, align 1
  %109 = add i8 %108, 1
  store i8 %109, i8* %6, align 1
  %110 = zext i8 %108 to i64
  %111 = getelementptr inbounds i32, i32* %107, i64 %110
  store i32 %102, i32* %111, align 4
  %112 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %113 = call i32 @atp_readb_base(%struct.atp_unit* %112, i32 51)
  %114 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %115 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %114, i32 0, i32 3
  %116 = load i32**, i32*** %115, align 8
  %117 = getelementptr inbounds i32*, i32** %116, i64 0
  %118 = load i32*, i32** %117, align 8
  %119 = load i8, i8* %6, align 1
  %120 = add i8 %119, 1
  store i8 %120, i8* %6, align 1
  %121 = zext i8 %119 to i64
  %122 = getelementptr inbounds i32, i32* %118, i64 %121
  store i32 %113, i32* %122, align 4
  %123 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %124 = load i32, i32* %8, align 4
  %125 = call i32 @atp_writew_base(%struct.atp_unit* %123, i32 52, i32 %124)
  %126 = load i32, i32* %8, align 4
  %127 = add i32 %126, 2
  store i32 %127, i32* %8, align 4
  %128 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %129 = call i32 @atp_readb_base(%struct.atp_unit* %128, i32 48)
  %130 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %131 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %130, i32 0, i32 3
  %132 = load i32**, i32*** %131, align 8
  %133 = getelementptr inbounds i32*, i32** %132, i64 0
  %134 = load i32*, i32** %133, align 8
  %135 = load i8, i8* %6, align 1
  %136 = add i8 %135, 1
  store i8 %136, i8* %6, align 1
  %137 = zext i8 %135 to i64
  %138 = getelementptr inbounds i32, i32* %134, i64 %137
  store i32 %129, i32* %138, align 4
  %139 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %140 = call i32 @atp_readb_base(%struct.atp_unit* %139, i32 49)
  %141 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %142 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %141, i32 0, i32 3
  %143 = load i32**, i32*** %142, align 8
  %144 = getelementptr inbounds i32*, i32** %143, i64 0
  %145 = load i32*, i32** %144, align 8
  %146 = load i8, i8* %6, align 1
  %147 = add i8 %146, 1
  store i8 %147, i8* %6, align 1
  %148 = zext i8 %146 to i64
  %149 = getelementptr inbounds i32, i32* %145, i64 %148
  store i32 %140, i32* %149, align 4
  %150 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %151 = call i32 @atp_readb_base(%struct.atp_unit* %150, i32 50)
  %152 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %153 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %152, i32 0, i32 3
  %154 = load i32**, i32*** %153, align 8
  %155 = getelementptr inbounds i32*, i32** %154, i64 0
  %156 = load i32*, i32** %155, align 8
  %157 = load i8, i8* %6, align 1
  %158 = add i8 %157, 1
  store i8 %158, i8* %6, align 1
  %159 = zext i8 %157 to i64
  %160 = getelementptr inbounds i32, i32* %156, i64 %159
  store i32 %151, i32* %160, align 4
  %161 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %162 = call i32 @atp_readb_base(%struct.atp_unit* %161, i32 51)
  %163 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %164 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %163, i32 0, i32 3
  %165 = load i32**, i32*** %164, align 8
  %166 = getelementptr inbounds i32*, i32** %165, i64 0
  %167 = load i32*, i32** %166, align 8
  %168 = load i8, i8* %6, align 1
  %169 = add i8 %168, 1
  store i8 %169, i8* %6, align 1
  %170 = zext i8 %168 to i64
  %171 = getelementptr inbounds i32, i32* %167, i64 %170
  store i32 %162, i32* %171, align 4
  %172 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %173 = load i32, i32* %8, align 4
  %174 = call i32 @atp_writew_base(%struct.atp_unit* %172, i32 52, i32 %173)
  %175 = load i32, i32* %8, align 4
  %176 = add i32 %175, 2
  store i32 %176, i32* %8, align 4
  %177 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %178 = call i32 @atp_readb_base(%struct.atp_unit* %177, i32 48)
  %179 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %180 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %179, i32 0, i32 3
  %181 = load i32**, i32*** %180, align 8
  %182 = getelementptr inbounds i32*, i32** %181, i64 0
  %183 = load i32*, i32** %182, align 8
  %184 = load i8, i8* %6, align 1
  %185 = add i8 %184, 1
  store i8 %185, i8* %6, align 1
  %186 = zext i8 %184 to i64
  %187 = getelementptr inbounds i32, i32* %183, i64 %186
  store i32 %178, i32* %187, align 4
  %188 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %189 = call i32 @atp_readb_base(%struct.atp_unit* %188, i32 49)
  %190 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %191 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %190, i32 0, i32 3
  %192 = load i32**, i32*** %191, align 8
  %193 = getelementptr inbounds i32*, i32** %192, i64 0
  %194 = load i32*, i32** %193, align 8
  %195 = load i8, i8* %6, align 1
  %196 = add i8 %195, 1
  store i8 %196, i8* %6, align 1
  %197 = zext i8 %195 to i64
  %198 = getelementptr inbounds i32, i32* %194, i64 %197
  store i32 %189, i32* %198, align 4
  %199 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %200 = call i32 @atp_readb_base(%struct.atp_unit* %199, i32 50)
  %201 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %202 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %201, i32 0, i32 3
  %203 = load i32**, i32*** %202, align 8
  %204 = getelementptr inbounds i32*, i32** %203, i64 0
  %205 = load i32*, i32** %204, align 8
  %206 = load i8, i8* %6, align 1
  %207 = add i8 %206, 1
  store i8 %207, i8* %6, align 1
  %208 = zext i8 %206 to i64
  %209 = getelementptr inbounds i32, i32* %205, i64 %208
  store i32 %200, i32* %209, align 4
  %210 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %211 = call i32 @atp_readb_base(%struct.atp_unit* %210, i32 51)
  %212 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %213 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %212, i32 0, i32 3
  %214 = load i32**, i32*** %213, align 8
  %215 = getelementptr inbounds i32*, i32** %214, i64 0
  %216 = load i32*, i32** %215, align 8
  %217 = load i8, i8* %6, align 1
  %218 = add i8 %217, 1
  store i8 %218, i8* %6, align 1
  %219 = zext i8 %217 to i64
  %220 = getelementptr inbounds i32, i32* %216, i64 %219
  store i32 %211, i32* %220, align 4
  %221 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %222 = load i32, i32* %8, align 4
  %223 = call i32 @atp_writew_base(%struct.atp_unit* %221, i32 52, i32 %222)
  %224 = load i32, i32* %8, align 4
  %225 = add i32 %224, 2
  store i32 %225, i32* %8, align 4
  %226 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %227 = call i32 @atp_readb_base(%struct.atp_unit* %226, i32 48)
  %228 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %229 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %228, i32 0, i32 3
  %230 = load i32**, i32*** %229, align 8
  %231 = getelementptr inbounds i32*, i32** %230, i64 0
  %232 = load i32*, i32** %231, align 8
  %233 = load i8, i8* %6, align 1
  %234 = add i8 %233, 1
  store i8 %234, i8* %6, align 1
  %235 = zext i8 %233 to i64
  %236 = getelementptr inbounds i32, i32* %232, i64 %235
  store i32 %227, i32* %236, align 4
  %237 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %238 = call i32 @atp_readb_base(%struct.atp_unit* %237, i32 49)
  %239 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %240 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %239, i32 0, i32 3
  %241 = load i32**, i32*** %240, align 8
  %242 = getelementptr inbounds i32*, i32** %241, i64 0
  %243 = load i32*, i32** %242, align 8
  %244 = load i8, i8* %6, align 1
  %245 = add i8 %244, 1
  store i8 %245, i8* %6, align 1
  %246 = zext i8 %244 to i64
  %247 = getelementptr inbounds i32, i32* %243, i64 %246
  store i32 %238, i32* %247, align 4
  %248 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %249 = call i32 @atp_readb_base(%struct.atp_unit* %248, i32 50)
  %250 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %251 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %250, i32 0, i32 3
  %252 = load i32**, i32*** %251, align 8
  %253 = getelementptr inbounds i32*, i32** %252, i64 0
  %254 = load i32*, i32** %253, align 8
  %255 = load i8, i8* %6, align 1
  %256 = add i8 %255, 1
  store i8 %256, i8* %6, align 1
  %257 = zext i8 %255 to i64
  %258 = getelementptr inbounds i32, i32* %254, i64 %257
  store i32 %249, i32* %258, align 4
  %259 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %260 = call i32 @atp_readb_base(%struct.atp_unit* %259, i32 51)
  %261 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %262 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %261, i32 0, i32 3
  %263 = load i32**, i32*** %262, align 8
  %264 = getelementptr inbounds i32*, i32** %263, i64 0
  %265 = load i32*, i32** %264, align 8
  %266 = load i8, i8* %6, align 1
  %267 = add i8 %266, 1
  store i8 %267, i8* %6, align 1
  %268 = zext i8 %266 to i64
  %269 = getelementptr inbounds i32, i32* %265, i64 %268
  store i32 %260, i32* %269, align 4
  %270 = load i32, i32* %8, align 4
  %271 = add i32 %270, 24
  store i32 %271, i32* %8, align 4
  br label %65

272:                                              ; preds = %77, %65
  %273 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %274 = call i32 @atp_writew_base(%struct.atp_unit* %273, i32 52, i32 0)
  %275 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %276 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %275, i32 0, i32 2
  %277 = load i32*, i32** %276, align 8
  %278 = getelementptr inbounds i32, i32* %277, i64 0
  store i32 0, i32* %278, align 4
  %279 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %280 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %279, i32 0, i32 4
  %281 = load i32*, i32** %280, align 8
  %282 = getelementptr inbounds i32, i32* %281, i64 0
  store i32 0, i32* %282, align 4
  store i8 0, i8* %5, align 1
  br label %283

283:                                              ; preds = %330, %272
  %284 = load i8, i8* %5, align 1
  %285 = zext i8 %284 to i32
  %286 = icmp slt i32 %285, 16
  br i1 %286, label %287, label %333

287:                                              ; preds = %283
  %288 = load i8, i8* %5, align 1
  %289 = zext i8 %288 to i32
  %290 = shl i32 1, %289
  store i32 %290, i32* %8, align 4
  %291 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %292 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %291, i32 0, i32 3
  %293 = load i32**, i32*** %292, align 8
  %294 = getelementptr inbounds i32*, i32** %293, i64 0
  %295 = load i32*, i32** %294, align 8
  %296 = load i8, i8* %5, align 1
  %297 = zext i8 %296 to i64
  %298 = getelementptr inbounds i32, i32* %295, i64 %297
  %299 = load i32, i32* %298, align 4
  %300 = icmp sgt i32 %299, 1
  br i1 %300, label %301, label %309

301:                                              ; preds = %287
  %302 = load i32, i32* %8, align 4
  %303 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %304 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %303, i32 0, i32 2
  %305 = load i32*, i32** %304, align 8
  %306 = getelementptr inbounds i32, i32* %305, i64 0
  %307 = load i32, i32* %306, align 4
  %308 = or i32 %307, %302
  store i32 %308, i32* %306, align 4
  br label %329

309:                                              ; preds = %287
  %310 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %311 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %310, i32 0, i32 3
  %312 = load i32**, i32*** %311, align 8
  %313 = getelementptr inbounds i32*, i32** %312, i64 0
  %314 = load i32*, i32** %313, align 8
  %315 = load i8, i8* %5, align 1
  %316 = zext i8 %315 to i64
  %317 = getelementptr inbounds i32, i32* %314, i64 %316
  %318 = load i32, i32* %317, align 4
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %320, label %328

320:                                              ; preds = %309
  %321 = load i32, i32* %8, align 4
  %322 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %323 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %322, i32 0, i32 4
  %324 = load i32*, i32** %323, align 8
  %325 = getelementptr inbounds i32, i32* %324, i64 0
  %326 = load i32, i32* %325, align 4
  %327 = or i32 %326, %321
  store i32 %327, i32* %325, align 4
  br label %328

328:                                              ; preds = %320, %309
  br label %329

329:                                              ; preds = %328, %301
  br label %330

330:                                              ; preds = %329
  %331 = load i8, i8* %5, align 1
  %332 = add i8 %331, 1
  store i8 %332, i8* %5, align 1
  br label %283

333:                                              ; preds = %283
  %334 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %335 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %334, i32 0, i32 4
  %336 = load i32*, i32** %335, align 8
  %337 = getelementptr inbounds i32, i32* %336, i64 0
  %338 = load i32, i32* %337, align 4
  %339 = xor i32 %338, -1
  %340 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %341 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %340, i32 0, i32 4
  %342 = load i32*, i32** %341, align 8
  %343 = getelementptr inbounds i32, i32* %342, i64 0
  store i32 %339, i32* %343, align 4
  %344 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %345 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %346 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %345, i32 0, i32 1
  %347 = load i32*, i32** %346, align 8
  %348 = getelementptr inbounds i32, i32* %347, i64 0
  %349 = load i32, i32* %348, align 4
  %350 = call i32 @atp_writeb_base(%struct.atp_unit* %344, i32 53, i32 %349)
  %351 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %352 = call i32 @atp_readb_base(%struct.atp_unit* %351, i32 56)
  %353 = and i32 %352, 128
  %354 = trunc i32 %353 to i8
  store i8 %354, i8* %5, align 1
  %355 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %356 = load i8, i8* %5, align 1
  %357 = zext i8 %356 to i32
  %358 = call i32 @atp_writeb_base(%struct.atp_unit* %355, i32 56, i32 %357)
  %359 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %360 = call i32 @atp_writeb_base(%struct.atp_unit* %359, i32 59, i32 32)
  %361 = call i32 @msleep(i32 32)
  %362 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %363 = call i32 @atp_writeb_base(%struct.atp_unit* %362, i32 59, i32 0)
  %364 = call i32 @msleep(i32 32)
  %365 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %366 = call i32 @atp_readb_io(%struct.atp_unit* %365, i32 0, i32 27)
  %367 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %368 = call i32 @atp_readb_io(%struct.atp_unit* %367, i32 0, i32 23)
  %369 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %370 = load i8, i8* %7, align 1
  %371 = call i32 @atp_set_host_id(%struct.atp_unit* %369, i32 0, i8 zeroext %370)
  %372 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %373 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %374 = call i32 @atp_readb_base(%struct.atp_unit* %373, i32 34)
  %375 = call i32 @tscam(%struct.Scsi_Host* %372, i32 1, i32 %374)
  %376 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %377 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %378 = call i32 @atp_readb_base(%struct.atp_unit* %377, i32 63)
  %379 = and i32 %378, 64
  %380 = call i32 @atp_is(%struct.atp_unit* %376, i32 0, i32 1, i32 %379)
  %381 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %382 = call i32 @atp_writeb_base(%struct.atp_unit* %381, i32 56, i32 176)
  %383 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %384 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %383, i32 0, i32 0
  store i32 16, i32* %384, align 4
  %385 = load i8, i8* %7, align 1
  %386 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %387 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %386, i32 0, i32 1
  store i8 %385, i8* %387, align 4
  ret void
}

declare dso_local %struct.atp_unit* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @atp_readb_base(%struct.atp_unit*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

declare dso_local i32 @atp_readw_base(%struct.atp_unit*, i32) #1

declare dso_local i32 @atp_writew_base(%struct.atp_unit*, i32, i32) #1

declare dso_local i32 @atp_writeb_base(%struct.atp_unit*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @atp_readb_io(%struct.atp_unit*, i32, i32) #1

declare dso_local i32 @atp_set_host_id(%struct.atp_unit*, i32, i8 zeroext) #1

declare dso_local i32 @tscam(%struct.Scsi_Host*, i32, i32) #1

declare dso_local i32 @atp_is(%struct.atp_unit*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
