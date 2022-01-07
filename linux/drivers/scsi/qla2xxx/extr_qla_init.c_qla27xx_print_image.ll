; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_init.c_qla27xx_print_image.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_init.c_qla27xx_print_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32 }
%struct.qla27xx_image_status = type { i32, i32, i32, i32, i32, i32, i32 }

@ql_dbg_init = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"%s %s: mask=%#02x gen=%#04x ver=%u.%u map=%#01x sum=%#08x sig=%#08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_qla_host*, i8*, %struct.qla27xx_image_status*)* @qla27xx_print_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla27xx_print_image(%struct.scsi_qla_host* %0, i8* %1, %struct.qla27xx_image_status* %2) #0 {
  %4 = alloca %struct.scsi_qla_host*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.qla27xx_image_status*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.qla27xx_image_status* %2, %struct.qla27xx_image_status** %6, align 8
  %7 = load i32, i32* @ql_dbg_init, align 4
  %8 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load %struct.qla27xx_image_status*, %struct.qla27xx_image_status** %6, align 8
  %11 = getelementptr inbounds %struct.qla27xx_image_status, %struct.qla27xx_image_status* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.qla27xx_image_status*, %struct.qla27xx_image_status** %6, align 8
  %14 = getelementptr inbounds %struct.qla27xx_image_status, %struct.qla27xx_image_status* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @le16_to_cpu(i32 %15)
  %17 = load %struct.qla27xx_image_status*, %struct.qla27xx_image_status** %6, align 8
  %18 = getelementptr inbounds %struct.qla27xx_image_status, %struct.qla27xx_image_status* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.qla27xx_image_status*, %struct.qla27xx_image_status** %6, align 8
  %21 = getelementptr inbounds %struct.qla27xx_image_status, %struct.qla27xx_image_status* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.qla27xx_image_status*, %struct.qla27xx_image_status** %6, align 8
  %24 = getelementptr inbounds %struct.qla27xx_image_status, %struct.qla27xx_image_status* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.qla27xx_image_status*, %struct.qla27xx_image_status** %6, align 8
  %27 = getelementptr inbounds %struct.qla27xx_image_status, %struct.qla27xx_image_status* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @le32_to_cpu(i32 %28)
  %30 = load %struct.qla27xx_image_status*, %struct.qla27xx_image_status** %6, align 8
  %31 = getelementptr inbounds %struct.qla27xx_image_status, %struct.qla27xx_image_status* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @le32_to_cpu(i32 %32)
  %34 = call i32 @ql_dbg(i32 %7, %struct.scsi_qla_host* %8, i32 395, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i8* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %12, i32 %16, i32 %19, i32 %22, i32 %25, i32 %29, i32 %33)
  ret void
}

declare dso_local i32 @ql_dbg(i32, %struct.scsi_qla_host*, i32, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
