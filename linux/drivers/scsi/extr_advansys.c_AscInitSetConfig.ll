; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_advansys.c_AscInitSetConfig.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_advansys.c_AscInitSetConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i64 }
%struct.Scsi_Host = type { i32 }
%struct.asc_board = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i64, i32, i32 }

@ASC_INIT_STATE_BEG_SET_CFG = common dso_local global i32 0, align 4
@ASC_IERR_BAD_SIGNATURE = common dso_local global i32 0, align 4
@ASC_CFG_MSW_CLR_MASK = common dso_local global i16 0, align 2
@ASC_WARN_CFG_MSW_RECOVER = common dso_local global i16 0, align 2
@CSW_AUTO_CONFIG = common dso_local global i32 0, align 4
@ASC_IS_ISAPNP = common dso_local global i32 0, align 4
@ASC_CHIP_VER_ASYN_BUG = common dso_local global i64 0, align 8
@ASC_BUG_FIX_ASYN_USE_SYN = common dso_local global i32 0, align 4
@ASC_IERR_SET_SCSI_ID = common dso_local global i32 0, align 4
@ASC_INIT_STATE_END_SET_CFG = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"I/O port address modified\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"I/O port increment switch enabled\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"EEPROM checksum error\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"IRQ modified\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"tag queuing w/o disconnects\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"unknown warning: 0x%x\0A\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"error 0x%x at init_state 0x%x\0A\00", align 1
@ASC_BUG_FIX_IF_NOT_DWB = common dso_local global i32 0, align 4
@ASC_IS_ISA = common dso_local global i32 0, align 4
@ASC_IS_PCI = common dso_local global i32 0, align 4
@ASC_IS_PCI_ULTRA = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_ASP_1200A = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_ASP_ABP940 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.Scsi_Host*)* @AscInitSetConfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AscInitSetConfig(%struct.pci_dev* %0, %struct.Scsi_Host* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca %struct.asc_board*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.Scsi_Host* %1, %struct.Scsi_Host** %5, align 8
  %11 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %12 = call %struct.asc_board* @shost_priv(%struct.Scsi_Host* %11)
  store %struct.asc_board* %12, %struct.asc_board** %6, align 8
  %13 = load %struct.asc_board*, %struct.asc_board** %6, align 8
  %14 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %7, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %8, align 4
  store i16 0, i16* %10, align 2
  %19 = load i32, i32* @ASC_INIT_STATE_BEG_SET_CFG, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %2
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %3, align 4
  br label %209

32:                                               ; preds = %2
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @AscFindSignature(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* @ASC_IERR_BAD_SIGNATURE, align 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %3, align 4
  br label %209

45:                                               ; preds = %32
  %46 = load i32, i32* %8, align 4
  %47 = call zeroext i16 @AscGetChipCfgMsw(i32 %46)
  store i16 %47, i16* %9, align 2
  %48 = load i16, i16* %9, align 2
  %49 = zext i16 %48 to i32
  %50 = load i16, i16* @ASC_CFG_MSW_CLR_MASK, align 2
  %51 = zext i16 %50 to i32
  %52 = and i32 %49, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %71

54:                                               ; preds = %45
  %55 = load i16, i16* @ASC_CFG_MSW_CLR_MASK, align 2
  %56 = zext i16 %55 to i32
  %57 = xor i32 %56, -1
  %58 = load i16, i16* %9, align 2
  %59 = zext i16 %58 to i32
  %60 = and i32 %59, %57
  %61 = trunc i32 %60 to i16
  store i16 %61, i16* %9, align 2
  %62 = load i16, i16* @ASC_WARN_CFG_MSW_RECOVER, align 2
  %63 = zext i16 %62 to i32
  %64 = load i16, i16* %10, align 2
  %65 = zext i16 %64 to i32
  %66 = or i32 %65, %63
  %67 = trunc i32 %66 to i16
  store i16 %67, i16* %10, align 2
  %68 = load i32, i32* %8, align 4
  %69 = load i16, i16* %9, align 2
  %70 = call i32 @AscSetChipCfgMsw(i32 %68, i16 zeroext %69)
  br label %71

71:                                               ; preds = %54, %45
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 3
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 3
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %76, %81
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 3
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %82, %87
  br i1 %88, label %89, label %103

89:                                               ; preds = %71
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 3
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 3
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 1
  store i32 %94, i32* %98, align 4
  %99 = load i16, i16* %10, align 2
  %100 = zext i16 %99 to i32
  %101 = or i32 %100, 131
  %102 = trunc i32 %101 to i16
  store i16 %102, i16* %10, align 2
  br label %103

103:                                              ; preds = %89, %71
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @AscGetChipStatus(i32 %104)
  %106 = load i32, i32* @CSW_AUTO_CONFIG, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %103
  %110 = load i16, i16* %10, align 2
  %111 = zext i16 %110 to i32
  %112 = or i32 %111, 132
  %113 = trunc i32 %112 to i16
  store i16 %113, i16* %10, align 2
  br label %114

114:                                              ; preds = %109, %103
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @ASC_IS_ISAPNP, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %135

120:                                              ; preds = %114
  %121 = load i32, i32* %8, align 4
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i64 @AscGetChipVersion(i32 %121, i32 %124)
  %126 = load i64, i64* @ASC_CHIP_VER_ASYN_BUG, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %134

128:                                              ; preds = %120
  %129 = load i32, i32* @ASC_BUG_FIX_ASYN_USE_SYN, align 4
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  %133 = or i32 %132, %129
  store i32 %133, i32* %131, align 8
  br label %134

134:                                              ; preds = %128, %120
  br label %135

135:                                              ; preds = %134, %114
  %136 = load i32, i32* %8, align 4
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 3
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = call i64 @AscSetChipScsiID(i32 %136, i64 %141)
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 3
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %142, %147
  br i1 %148, label %149, label %155

149:                                              ; preds = %135
  %150 = load i32, i32* @ASC_IERR_SET_SCSI_ID, align 4
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = or i32 %153, %150
  store i32 %154, i32* %152, align 8
  br label %155

155:                                              ; preds = %149, %135
  %156 = load i32, i32* @ASC_INIT_STATE_END_SET_CFG, align 4
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = or i32 %159, %156
  store i32 %160, i32* %158, align 8
  %161 = load i16, i16* %10, align 2
  %162 = zext i16 %161 to i32
  switch i32 %162, label %184 [
    i32 0, label %163
    i32 129, label %164
    i32 132, label %168
    i32 130, label %172
    i32 128, label %176
    i32 131, label %180
  ]

163:                                              ; preds = %155
  br label %190

164:                                              ; preds = %155
  %165 = load i32, i32* @KERN_WARNING, align 4
  %166 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %167 = call i32 (i32, %struct.Scsi_Host*, i8*, ...) @shost_printk(i32 %165, %struct.Scsi_Host* %166, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %190

168:                                              ; preds = %155
  %169 = load i32, i32* @KERN_WARNING, align 4
  %170 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %171 = call i32 (i32, %struct.Scsi_Host*, i8*, ...) @shost_printk(i32 %169, %struct.Scsi_Host* %170, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %190

172:                                              ; preds = %155
  %173 = load i32, i32* @KERN_WARNING, align 4
  %174 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %175 = call i32 (i32, %struct.Scsi_Host*, i8*, ...) @shost_printk(i32 %173, %struct.Scsi_Host* %174, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %190

176:                                              ; preds = %155
  %177 = load i32, i32* @KERN_WARNING, align 4
  %178 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %179 = call i32 (i32, %struct.Scsi_Host*, i8*, ...) @shost_printk(i32 %177, %struct.Scsi_Host* %178, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %190

180:                                              ; preds = %155
  %181 = load i32, i32* @KERN_WARNING, align 4
  %182 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %183 = call i32 (i32, %struct.Scsi_Host*, i8*, ...) @shost_printk(i32 %181, %struct.Scsi_Host* %182, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %190

184:                                              ; preds = %155
  %185 = load i32, i32* @KERN_WARNING, align 4
  %186 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %187 = load i16, i16* %10, align 2
  %188 = zext i16 %187 to i32
  %189 = call i32 (i32, %struct.Scsi_Host*, i8*, ...) @shost_printk(i32 %185, %struct.Scsi_Host* %186, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %188)
  br label %190

190:                                              ; preds = %184, %180, %176, %172, %168, %164, %163
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %205

195:                                              ; preds = %190
  %196 = load i32, i32* @KERN_ERR, align 4
  %197 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = call i32 (i32, %struct.Scsi_Host*, i8*, ...) @shost_printk(i32 %196, %struct.Scsi_Host* %197, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %200, i32 %203)
  br label %205

205:                                              ; preds = %195, %190
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  store i32 %208, i32* %3, align 4
  br label %209

209:                                              ; preds = %205, %38, %28
  %210 = load i32, i32* %3, align 4
  ret i32 %210
}

declare dso_local %struct.asc_board* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @AscFindSignature(i32) #1

declare dso_local zeroext i16 @AscGetChipCfgMsw(i32) #1

declare dso_local i32 @AscSetChipCfgMsw(i32, i16 zeroext) #1

declare dso_local i32 @AscGetChipStatus(i32) #1

declare dso_local i64 @AscGetChipVersion(i32, i32) #1

declare dso_local i64 @AscSetChipScsiID(i32, i64) #1

declare dso_local i32 @shost_printk(i32, %struct.Scsi_Host*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
