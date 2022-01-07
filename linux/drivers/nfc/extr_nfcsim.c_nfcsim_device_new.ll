; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/extr_nfcsim.c_nfcsim_device_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/extr_nfcsim.c_nfcsim_device_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfcsim = type { i32, %struct.nfcsim_link*, %struct.nfcsim_link*, i32, i32 }
%struct.nfcsim_link = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nfcsim_send_wq = common dso_local global i32 0, align 4
@nfcsim_recv_wq = common dso_local global i32 0, align 4
@nfcsim_digital_ops = common dso_local global i32 0, align 4
@NFC_PROTO_NFC_DEP_MASK = common dso_local global i32 0, align 4
@NFCSIM_CAPABILITIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Could not register digital device (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfcsim* (%struct.nfcsim_link*, %struct.nfcsim_link*)* @nfcsim_device_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfcsim* @nfcsim_device_new(%struct.nfcsim_link* %0, %struct.nfcsim_link* %1) #0 {
  %3 = alloca %struct.nfcsim*, align 8
  %4 = alloca %struct.nfcsim_link*, align 8
  %5 = alloca %struct.nfcsim_link*, align 8
  %6 = alloca %struct.nfcsim*, align 8
  %7 = alloca i32, align 4
  store %struct.nfcsim_link* %0, %struct.nfcsim_link** %4, align 8
  store %struct.nfcsim_link* %1, %struct.nfcsim_link** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.nfcsim* @kzalloc(i32 32, i32 %8)
  store %struct.nfcsim* %9, %struct.nfcsim** %6, align 8
  %10 = load %struct.nfcsim*, %struct.nfcsim** %6, align 8
  %11 = icmp ne %struct.nfcsim* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.nfcsim* @ERR_PTR(i32 %14)
  store %struct.nfcsim* %15, %struct.nfcsim** %3, align 8
  br label %73

16:                                               ; preds = %2
  %17 = load %struct.nfcsim*, %struct.nfcsim** %6, align 8
  %18 = getelementptr inbounds %struct.nfcsim, %struct.nfcsim* %17, i32 0, i32 4
  %19 = load i32, i32* @nfcsim_send_wq, align 4
  %20 = call i32 @INIT_DELAYED_WORK(i32* %18, i32 %19)
  %21 = load %struct.nfcsim*, %struct.nfcsim** %6, align 8
  %22 = getelementptr inbounds %struct.nfcsim, %struct.nfcsim* %21, i32 0, i32 3
  %23 = load i32, i32* @nfcsim_recv_wq, align 4
  %24 = call i32 @INIT_WORK(i32* %22, i32 %23)
  %25 = load i32, i32* @NFC_PROTO_NFC_DEP_MASK, align 4
  %26 = load i32, i32* @NFCSIM_CAPABILITIES, align 4
  %27 = call i32 @nfc_digital_allocate_device(i32* @nfcsim_digital_ops, i32 %25, i32 %26, i32 0, i32 0)
  %28 = load %struct.nfcsim*, %struct.nfcsim** %6, align 8
  %29 = getelementptr inbounds %struct.nfcsim, %struct.nfcsim* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.nfcsim*, %struct.nfcsim** %6, align 8
  %31 = getelementptr inbounds %struct.nfcsim, %struct.nfcsim* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %16
  %35 = load %struct.nfcsim*, %struct.nfcsim** %6, align 8
  %36 = call i32 @kfree(%struct.nfcsim* %35)
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  %39 = call %struct.nfcsim* @ERR_PTR(i32 %38)
  store %struct.nfcsim* %39, %struct.nfcsim** %3, align 8
  br label %73

40:                                               ; preds = %16
  %41 = load %struct.nfcsim*, %struct.nfcsim** %6, align 8
  %42 = getelementptr inbounds %struct.nfcsim, %struct.nfcsim* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.nfcsim*, %struct.nfcsim** %6, align 8
  %45 = call i32 @nfc_digital_set_drvdata(i32 %43, %struct.nfcsim* %44)
  %46 = load %struct.nfcsim_link*, %struct.nfcsim_link** %4, align 8
  %47 = load %struct.nfcsim*, %struct.nfcsim** %6, align 8
  %48 = getelementptr inbounds %struct.nfcsim, %struct.nfcsim* %47, i32 0, i32 2
  store %struct.nfcsim_link* %46, %struct.nfcsim_link** %48, align 8
  %49 = load %struct.nfcsim_link*, %struct.nfcsim_link** %5, align 8
  %50 = load %struct.nfcsim*, %struct.nfcsim** %6, align 8
  %51 = getelementptr inbounds %struct.nfcsim, %struct.nfcsim* %50, i32 0, i32 1
  store %struct.nfcsim_link* %49, %struct.nfcsim_link** %51, align 8
  %52 = load %struct.nfcsim*, %struct.nfcsim** %6, align 8
  %53 = getelementptr inbounds %struct.nfcsim, %struct.nfcsim* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @nfc_digital_register_device(i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %40
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %59)
  %61 = load %struct.nfcsim*, %struct.nfcsim** %6, align 8
  %62 = getelementptr inbounds %struct.nfcsim, %struct.nfcsim* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @nfc_digital_free_device(i32 %63)
  %65 = load %struct.nfcsim*, %struct.nfcsim** %6, align 8
  %66 = call i32 @kfree(%struct.nfcsim* %65)
  %67 = load i32, i32* %7, align 4
  %68 = call %struct.nfcsim* @ERR_PTR(i32 %67)
  store %struct.nfcsim* %68, %struct.nfcsim** %3, align 8
  br label %73

69:                                               ; preds = %40
  %70 = load %struct.nfcsim*, %struct.nfcsim** %6, align 8
  %71 = call i32 @nfcsim_debugfs_init_dev(%struct.nfcsim* %70)
  %72 = load %struct.nfcsim*, %struct.nfcsim** %6, align 8
  store %struct.nfcsim* %72, %struct.nfcsim** %3, align 8
  br label %73

73:                                               ; preds = %69, %58, %34, %12
  %74 = load %struct.nfcsim*, %struct.nfcsim** %3, align 8
  ret %struct.nfcsim* %74
}

declare dso_local %struct.nfcsim* @kzalloc(i32, i32) #1

declare dso_local %struct.nfcsim* @ERR_PTR(i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @nfc_digital_allocate_device(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.nfcsim*) #1

declare dso_local i32 @nfc_digital_set_drvdata(i32, %struct.nfcsim*) #1

declare dso_local i32 @nfc_digital_register_device(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @nfc_digital_free_device(i32) #1

declare dso_local i32 @nfcsim_debugfs_init_dev(%struct.nfcsim*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
