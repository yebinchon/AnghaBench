; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_log_ext_vpd_compact.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_log_ext_vpd_compact.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipr_hostrcb = type { i32 }
%struct.ipr_ext_vpd = type { i32*, i32 }

@.str = private unnamed_addr constant [18 x i8] c"%s WWN: %08X%08X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.ipr_hostrcb*, %struct.ipr_ext_vpd*)* @ipr_log_ext_vpd_compact to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipr_log_ext_vpd_compact(i8* %0, %struct.ipr_hostrcb* %1, %struct.ipr_ext_vpd* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ipr_hostrcb*, align 8
  %6 = alloca %struct.ipr_ext_vpd*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.ipr_hostrcb* %1, %struct.ipr_hostrcb** %5, align 8
  store %struct.ipr_ext_vpd* %2, %struct.ipr_ext_vpd** %6, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = load %struct.ipr_hostrcb*, %struct.ipr_hostrcb** %5, align 8
  %9 = load %struct.ipr_ext_vpd*, %struct.ipr_ext_vpd** %6, align 8
  %10 = getelementptr inbounds %struct.ipr_ext_vpd, %struct.ipr_ext_vpd* %9, i32 0, i32 1
  %11 = call i32 @ipr_log_vpd_compact(i8* %7, %struct.ipr_hostrcb* %8, i32* %10)
  %12 = load %struct.ipr_hostrcb*, %struct.ipr_hostrcb** %5, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = load %struct.ipr_ext_vpd*, %struct.ipr_ext_vpd** %6, align 8
  %15 = getelementptr inbounds %struct.ipr_ext_vpd, %struct.ipr_ext_vpd* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @be32_to_cpu(i32 %18)
  %20 = load %struct.ipr_ext_vpd*, %struct.ipr_ext_vpd** %6, align 8
  %21 = getelementptr inbounds %struct.ipr_ext_vpd, %struct.ipr_ext_vpd* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @be32_to_cpu(i32 %24)
  %26 = call i32 @ipr_hcam_err(%struct.ipr_hostrcb* %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %13, i32 %19, i32 %25)
  ret void
}

declare dso_local i32 @ipr_log_vpd_compact(i8*, %struct.ipr_hostrcb*, i32*) #1

declare dso_local i32 @ipr_hcam_err(%struct.ipr_hostrcb*, i8*, i8*, i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
