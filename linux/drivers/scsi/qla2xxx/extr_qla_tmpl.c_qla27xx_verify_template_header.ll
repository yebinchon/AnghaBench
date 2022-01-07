; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_tmpl.c_qla27xx_verify_template_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_tmpl.c_qla27xx_verify_template_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla27xx_fwdt_template = type { i32 }

@TEMPLATE_TYPE_FWDUMP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qla27xx_fwdt_template*)* @qla27xx_verify_template_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla27xx_verify_template_header(%struct.qla27xx_fwdt_template* %0) #0 {
  %2 = alloca %struct.qla27xx_fwdt_template*, align 8
  store %struct.qla27xx_fwdt_template* %0, %struct.qla27xx_fwdt_template** %2, align 8
  %3 = load %struct.qla27xx_fwdt_template*, %struct.qla27xx_fwdt_template** %2, align 8
  %4 = getelementptr inbounds %struct.qla27xx_fwdt_template, %struct.qla27xx_fwdt_template* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i64 @le32_to_cpu(i32 %5)
  %7 = load i64, i64* @TEMPLATE_TYPE_FWDUMP, align 8
  %8 = icmp eq i64 %6, %7
  %9 = zext i1 %8 to i32
  ret i32 %9
}

declare dso_local i64 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
