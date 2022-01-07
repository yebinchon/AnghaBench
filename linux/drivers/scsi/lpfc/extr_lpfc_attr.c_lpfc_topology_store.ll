; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_attr.c_lpfc_topology_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_attr.c_lpfc_topology_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.Scsi_Host = type { i64 }
%struct.lpfc_vport = type { %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32, i64, i64, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [7 x i8] c"nolip \00", align 1
@EINVAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@LPFC_USER_LINK_SPEED_16G = common dso_local global i64 0, align 8
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"3113 Loop mode not supported at speed %d\0A\00", align 1
@PCI_DEVICE_ID_LANCER_G6_FC = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_LANCER_G7_FC = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"3114 Loop mode not supported\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"3054 lpfc_topology changed from %d to %d\0A\00", align 1
@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [78 x i8] c"%d:0467 lpfc_topology attribute cannot be set to %d, allowed range is [0, 6]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @lpfc_topology_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @lpfc_topology_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.Scsi_Host*, align 8
  %11 = alloca %struct.lpfc_vport*, align 8
  %12 = alloca %struct.lpfc_hba*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = call %struct.Scsi_Host* @class_to_shost(%struct.device* %18)
  store %struct.Scsi_Host* %19, %struct.Scsi_Host** %10, align 8
  %20 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %21 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.lpfc_vport*
  store %struct.lpfc_vport* %23, %struct.lpfc_vport** %11, align 8
  %24 = load %struct.lpfc_vport*, %struct.lpfc_vport** %11, align 8
  %25 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %24, i32 0, i32 0
  %26 = load %struct.lpfc_hba*, %struct.lpfc_hba** %25, align 8
  store %struct.lpfc_hba* %26, %struct.lpfc_hba** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %27 = load i8*, i8** %8, align 8
  store i8* %27, i8** %15, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @strncmp(i8* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64 6)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %4
  store i32 1, i32* %14, align 4
  %32 = load i8*, i8** %8, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 6
  store i8* %33, i8** %15, align 8
  br label %34

34:                                               ; preds = %31, %4
  %35 = load i8*, i8** %15, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = call i32 @isdigit(i8 signext %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %34
  %41 = load i64, i64* @EINVAL, align 8
  %42 = sub i64 0, %41
  store i64 %42, i64* %5, align 8
  br label %158

43:                                               ; preds = %34
  %44 = load i8*, i8** %15, align 8
  %45 = call i32 @sscanf(i8* %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %13)
  %46 = icmp ne i32 %45, 1
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i64, i64* @EINVAL, align 8
  %49 = sub i64 0, %48
  store i64 %49, i64* %5, align 8
  br label %158

50:                                               ; preds = %43
  %51 = load i32, i32* %13, align 4
  %52 = icmp sge i32 %51, 0
  br i1 %52, label %53, label %147

53:                                               ; preds = %50
  %54 = load i32, i32* %13, align 4
  %55 = icmp sle i32 %54, 6
  br i1 %55, label %56, label %147

56:                                               ; preds = %53
  %57 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %58 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %17, align 4
  %60 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %61 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @LPFC_USER_LINK_SPEED_16G, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %76

65:                                               ; preds = %56
  %66 = load i32, i32* %13, align 4
  %67 = icmp eq i32 %66, 4
  br i1 %67, label %68, label %76

68:                                               ; preds = %65
  %69 = load %struct.lpfc_vport*, %struct.lpfc_vport** %11, align 8
  %70 = load i32, i32* @KERN_ERR, align 4
  %71 = load i32, i32* @LOG_INIT, align 4
  %72 = load i32, i32* %13, align 4
  %73 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %69, i32 %70, i32 %71, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %72)
  %74 = load i64, i64* @EINVAL, align 8
  %75 = sub i64 0, %74
  store i64 %75, i64* %5, align 8
  br label %158

76:                                               ; preds = %65, %56
  %77 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %78 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %77, i32 0, i32 6
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @PCI_DEVICE_ID_LANCER_G6_FC, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %92, label %84

84:                                               ; preds = %76
  %85 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %86 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %85, i32 0, i32 6
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @PCI_DEVICE_ID_LANCER_G7_FC, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %102

92:                                               ; preds = %84, %76
  %93 = load i32, i32* %13, align 4
  %94 = icmp eq i32 %93, 4
  br i1 %94, label %95, label %102

95:                                               ; preds = %92
  %96 = load %struct.lpfc_vport*, %struct.lpfc_vport** %11, align 8
  %97 = load i32, i32* @KERN_ERR, align 4
  %98 = load i32, i32* @LOG_INIT, align 4
  %99 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %96, i32 %97, i32 %98, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %100 = load i64, i64* @EINVAL, align 8
  %101 = sub i64 0, %100
  store i64 %101, i64* %5, align 8
  br label %158

102:                                              ; preds = %92, %84
  %103 = load i32, i32* %13, align 4
  %104 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %105 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load i32, i32* %14, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %102
  %109 = load i8*, i8** %8, align 8
  %110 = call i64 @strlen(i8* %109)
  store i64 %110, i64* %5, align 8
  br label %158

111:                                              ; preds = %102
  %112 = load %struct.lpfc_vport*, %struct.lpfc_vport** %11, align 8
  %113 = load i32, i32* @KERN_ERR, align 4
  %114 = load i32, i32* @LOG_INIT, align 4
  %115 = load i32, i32* %17, align 4
  %116 = load i32, i32* %13, align 4
  %117 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %112, i32 %113, i32 %114, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %115, i32 %116)
  %118 = load i32, i32* %17, align 4
  %119 = load i32, i32* %13, align 4
  %120 = icmp ne i32 %118, %119
  br i1 %120, label %121, label %130

121:                                              ; preds = %111
  %122 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %123 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @LPFC_SLI_REV4, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %121
  %128 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %129 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %128, i32 0, i32 3
  store i32 1, i32* %129, align 8
  br label %130

130:                                              ; preds = %127, %121, %111
  %131 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %132 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @lpfc_shost_from_vport(i32 %133)
  %135 = call i32 @lpfc_issue_lip(i32 %134)
  store i32 %135, i32* %16, align 4
  %136 = load i32, i32* %16, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %130
  %139 = load i32, i32* %17, align 4
  %140 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %141 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 8
  %142 = load i64, i64* @EINVAL, align 8
  %143 = sub i64 0, %142
  store i64 %143, i64* %5, align 8
  br label %158

144:                                              ; preds = %130
  %145 = load i8*, i8** %8, align 8
  %146 = call i64 @strlen(i8* %145)
  store i64 %146, i64* %5, align 8
  br label %158

147:                                              ; preds = %53, %50
  %148 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %149 = load i32, i32* @KERN_ERR, align 4
  %150 = load i32, i32* @LOG_INIT, align 4
  %151 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %152 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %13, align 4
  %155 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %148, i32 %149, i32 %150, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.5, i64 0, i64 0), i32 %153, i32 %154)
  %156 = load i64, i64* @EINVAL, align 8
  %157 = sub i64 0, %156
  store i64 %157, i64* %5, align 8
  br label %158

158:                                              ; preds = %147, %144, %138, %108, %95, %68, %47, %40
  %159 = load i64, i64* %5, align 8
  ret i64 %159
}

declare dso_local %struct.Scsi_Host* @class_to_shost(%struct.device*) #1

declare dso_local i32 @strncmp(i8*, i8*, i64) #1

declare dso_local i32 @isdigit(i8 signext) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, ...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @lpfc_issue_lip(i32) #1

declare dso_local i32 @lpfc_shost_from_vport(i32) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
