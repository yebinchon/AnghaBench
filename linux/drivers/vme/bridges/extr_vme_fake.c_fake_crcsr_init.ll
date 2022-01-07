; ModuleID = '/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_fake.c_fake_crcsr_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_fake.c_fake_crcsr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vme_bridge = type { %struct.fake_driver* }
%struct.fake_driver = type { i32, i32 }

@VME_CRCSR_BUF_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"CR/CSR Offset: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vme_bridge*)* @fake_crcsr_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fake_crcsr_init(%struct.vme_bridge* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vme_bridge*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fake_driver*, align 8
  store %struct.vme_bridge* %0, %struct.vme_bridge** %3, align 8
  %6 = load %struct.vme_bridge*, %struct.vme_bridge** %3, align 8
  %7 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %6, i32 0, i32 0
  %8 = load %struct.fake_driver*, %struct.fake_driver** %7, align 8
  store %struct.fake_driver* %8, %struct.fake_driver** %5, align 8
  %9 = load i32, i32* @VME_CRCSR_BUF_SIZE, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i32 @kzalloc(i32 %9, i32 %10)
  %12 = load %struct.fake_driver*, %struct.fake_driver** %5, align 8
  %13 = getelementptr inbounds %struct.fake_driver, %struct.fake_driver* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct.fake_driver*, %struct.fake_driver** %5, align 8
  %15 = getelementptr inbounds %struct.fake_driver, %struct.fake_driver* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @fake_ptr_to_pci(i32 %16)
  %18 = load %struct.fake_driver*, %struct.fake_driver** %5, align 8
  %19 = getelementptr inbounds %struct.fake_driver, %struct.fake_driver* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.fake_driver*, %struct.fake_driver** %5, align 8
  %21 = getelementptr inbounds %struct.fake_driver, %struct.fake_driver* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %32

27:                                               ; preds = %1
  %28 = load %struct.vme_bridge*, %struct.vme_bridge** %3, align 8
  %29 = call i32 @fake_slot_get(%struct.vme_bridge* %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @pr_info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %30)
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %27, %24
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i32 @fake_ptr_to_pci(i32) #1

declare dso_local i32 @fake_slot_get(%struct.vme_bridge*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
