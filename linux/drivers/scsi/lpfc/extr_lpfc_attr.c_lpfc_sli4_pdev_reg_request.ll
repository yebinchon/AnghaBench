; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_attr.c_lpfc_sli4_pdev_reg_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_attr.c_lpfc_sli4_pdev_reg_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, i64, %struct.TYPE_4__, i32, %struct.TYPE_3__*, i32, %struct.pci_dev* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.pci_dev = type { i32 }
%struct.completion = type { i32 }

@EACCES = common dso_local global i32 0, align 4
@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@lpfc_sli_intf_if_type = common dso_local global i32 0, align 4
@LPFC_SLI_INTF_IF_TYPE_2 = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@LPFC_FW_DUMP = common dso_local global i64 0, align 8
@HBA_FW_DUMP_OP = common dso_local global i32 0, align 4
@LPFC_EVT_OFFLINE = common dso_local global i32 0, align 4
@LPFC_CTL_PDEV_CTL_OFFSET = common dso_local global i64 0, align 8
@LPFC_FW_DUMP_REQUEST = common dso_local global i64 0, align 8
@LPFC_FW_RESET = common dso_local global i64 0, align 8
@LPFC_CTL_PDEV_CTL_FRST = common dso_local global i64 0, align 8
@LPFC_DV_RESET = common dso_local global i64 0, align 8
@LPFC_CTL_PDEV_CTL_DRST = common dso_local global i64 0, align 8
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_SLI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"3150 No privilege to perform the requested access: x%x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"3153 Fail to perform the requested access: x%x\0A\00", align 1
@FC_OFFLINE_MODE = common dso_local global i64 0, align 8
@LPFC_EVT_ONLINE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, i64)* @lpfc_sli4_pdev_reg_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_sli4_pdev_reg_request(%struct.lpfc_hba* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.completion, align 4
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store i64 %1, i64* %5, align 8
  %15 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %16 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %15, i32 0, i32 6
  %17 = load %struct.pci_dev*, %struct.pci_dev** %16, align 8
  store %struct.pci_dev* %17, %struct.pci_dev** %7, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 1, i32* %13, align 4
  %18 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %19 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @EACCES, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %208

25:                                               ; preds = %2
  %26 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %27 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @LPFC_SLI_REV4, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %39, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* @lpfc_sli_intf_if_type, align 4
  %33 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %34 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = call i64 @bf_get(i32 %32, i32* %35)
  %37 = load i64, i64* @LPFC_SLI_INTF_IF_TYPE_2, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %31, %25
  %40 = load i32, i32* @EPERM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %208

42:                                               ; preds = %31
  %43 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %44 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %43, i32 0, i32 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %8, align 8
  %48 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %49 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %9, align 8
  %51 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %52 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %42
  %56 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %57 = call i32 @pci_disable_sriov(%struct.pci_dev* %56)
  %58 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %59 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %58, i32 0, i32 1
  store i64 0, i64* %59, align 8
  br label %60

60:                                               ; preds = %55, %42
  %61 = load i64, i64* %5, align 8
  %62 = load i64, i64* @LPFC_FW_DUMP, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %60
  %65 = load i32, i32* @HBA_FW_DUMP_OP, align 4
  %66 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %67 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 8
  br label %70

70:                                               ; preds = %64, %60
  %71 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %72 = load i32, i32* @LPFC_EVT_OFFLINE, align 4
  %73 = call i32 @lpfc_do_offline(%struct.lpfc_hba* %71, i32 %72)
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %70
  %77 = load i32, i32* @HBA_FW_DUMP_OP, align 4
  %78 = xor i32 %77, -1
  %79 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %80 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = and i32 %81, %78
  store i32 %82, i32* %80, align 8
  %83 = load i32, i32* %11, align 4
  store i32 %83, i32* %3, align 4
  br label %208

84:                                               ; preds = %70
  %85 = call i32 @msleep(i32 100)
  %86 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %87 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @LPFC_CTL_PDEV_CTL_OFFSET, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i64 @readl(i64 %91)
  store i64 %92, i64* %10, align 8
  %93 = load i64, i64* %5, align 8
  %94 = load i64, i64* @LPFC_FW_DUMP, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %84
  %97 = load i64, i64* @LPFC_FW_DUMP_REQUEST, align 8
  %98 = load i64, i64* %10, align 8
  %99 = or i64 %98, %97
  store i64 %99, i64* %10, align 8
  br label %118

100:                                              ; preds = %84
  %101 = load i64, i64* %5, align 8
  %102 = load i64, i64* @LPFC_FW_RESET, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %100
  %105 = load i64, i64* @LPFC_CTL_PDEV_CTL_FRST, align 8
  %106 = load i64, i64* %10, align 8
  %107 = or i64 %106, %105
  store i64 %107, i64* %10, align 8
  br label %117

108:                                              ; preds = %100
  %109 = load i64, i64* %5, align 8
  %110 = load i64, i64* @LPFC_DV_RESET, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %108
  %113 = load i64, i64* @LPFC_CTL_PDEV_CTL_DRST, align 8
  %114 = load i64, i64* %10, align 8
  %115 = or i64 %114, %113
  store i64 %115, i64* %10, align 8
  br label %116

116:                                              ; preds = %112, %108
  br label %117

117:                                              ; preds = %116, %104
  br label %118

118:                                              ; preds = %117, %96
  %119 = load i64, i64* %10, align 8
  %120 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %121 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @LPFC_CTL_PDEV_CTL_OFFSET, align 8
  %125 = add nsw i64 %123, %124
  %126 = call i32 @writel(i64 %119, i64 %125)
  %127 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %128 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @LPFC_CTL_PDEV_CTL_OFFSET, align 8
  %132 = add nsw i64 %130, %131
  %133 = call i64 @readl(i64 %132)
  %134 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %135 = call i32 @lpfc_sli4_pdev_status_reg_wait(%struct.lpfc_hba* %134)
  store i32 %135, i32* %12, align 4
  %136 = load i32, i32* %12, align 4
  %137 = load i32, i32* @EPERM, align 4
  %138 = sub nsw i32 0, %137
  %139 = icmp eq i32 %136, %138
  br i1 %139, label %140, label %146

140:                                              ; preds = %118
  %141 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %142 = load i32, i32* @KERN_ERR, align 4
  %143 = load i32, i32* @LOG_SLI, align 4
  %144 = load i64, i64* %10, align 8
  %145 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %141, i32 %142, i32 %143, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i64 %144)
  br label %159

146:                                              ; preds = %118
  %147 = load i32, i32* %12, align 4
  %148 = load i32, i32* @EIO, align 4
  %149 = sub nsw i32 0, %148
  %150 = icmp eq i32 %147, %149
  br i1 %150, label %151, label %158

151:                                              ; preds = %146
  %152 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %153 = load i32, i32* @KERN_ERR, align 4
  %154 = load i32, i32* @LOG_SLI, align 4
  %155 = load i64, i64* %10, align 8
  %156 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %152, i32 %153, i32 %154, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %155)
  %157 = load i32, i32* %12, align 4
  store i32 %157, i32* %3, align 4
  br label %208

158:                                              ; preds = %146
  br label %159

159:                                              ; preds = %158, %140
  %160 = load i64, i64* %8, align 8
  %161 = load i64, i64* @FC_OFFLINE_MODE, align 8
  %162 = and i64 %160, %161
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %159
  br label %175

165:                                              ; preds = %159
  %166 = call i32 @init_completion(%struct.completion* %6)
  %167 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %168 = load i32, i32* @LPFC_EVT_ONLINE, align 4
  %169 = call i32 @lpfc_workq_post_event(%struct.lpfc_hba* %167, i32* %11, %struct.completion* %6, i32 %168)
  store i32 %169, i32* %13, align 4
  %170 = load i32, i32* %13, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %173, label %172

172:                                              ; preds = %165
  br label %175

173:                                              ; preds = %165
  %174 = call i32 @wait_for_completion(%struct.completion* %6)
  br label %175

175:                                              ; preds = %173, %172, %164
  %176 = load i64, i64* %9, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %189

178:                                              ; preds = %175
  %179 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %180 = load i64, i64* %9, align 8
  %181 = call i32 @lpfc_sli_probe_sriov_nr_virtfn(%struct.lpfc_hba* %179, i64 %180)
  store i32 %181, i32* %14, align 4
  %182 = load i32, i32* %14, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %188, label %184

184:                                              ; preds = %178
  %185 = load i64, i64* %9, align 8
  %186 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %187 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %186, i32 0, i32 1
  store i64 %185, i64* %187, align 8
  br label %188

188:                                              ; preds = %184, %178
  br label %189

189:                                              ; preds = %188, %175
  %190 = load i32, i32* %12, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %206, label %192

192:                                              ; preds = %189
  %193 = load i32, i32* %13, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %198, label %195

195:                                              ; preds = %192
  %196 = load i32, i32* @ENOMEM, align 4
  %197 = sub nsw i32 0, %196
  store i32 %197, i32* %12, align 4
  br label %205

198:                                              ; preds = %192
  %199 = load i32, i32* %11, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %198
  %202 = load i32, i32* @EIO, align 4
  %203 = sub nsw i32 0, %202
  store i32 %203, i32* %12, align 4
  br label %204

204:                                              ; preds = %201, %198
  br label %205

205:                                              ; preds = %204, %195
  br label %206

206:                                              ; preds = %205, %189
  %207 = load i32, i32* %12, align 4
  store i32 %207, i32* %3, align 4
  br label %208

208:                                              ; preds = %206, %151, %76, %39, %22
  %209 = load i32, i32* %3, align 4
  ret i32 %209
}

declare dso_local i64 @bf_get(i32, i32*) #1

declare dso_local i32 @pci_disable_sriov(%struct.pci_dev*) #1

declare dso_local i32 @lpfc_do_offline(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i32 @lpfc_sli4_pdev_status_reg_wait(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i64) #1

declare dso_local i32 @init_completion(%struct.completion*) #1

declare dso_local i32 @lpfc_workq_post_event(%struct.lpfc_hba*, i32*, %struct.completion*, i32) #1

declare dso_local i32 @wait_for_completion(%struct.completion*) #1

declare dso_local i32 @lpfc_sli_probe_sriov_nr_virtfn(%struct.lpfc_hba*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
