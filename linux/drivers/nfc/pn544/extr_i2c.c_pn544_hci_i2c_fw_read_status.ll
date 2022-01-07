; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/pn544/extr_i2c.c_pn544_hci_i2c_fw_read_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/pn544/extr_i2c.c_pn544_hci_i2c_fw_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pn544_i2c_phy = type { %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.pn544_i2c_fw_frame_response = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"cannot read fw status\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@ENOKEY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pn544_i2c_phy*)* @pn544_hci_i2c_fw_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pn544_hci_i2c_fw_read_status(%struct.pn544_i2c_phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pn544_i2c_phy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pn544_i2c_fw_frame_response, align 4
  %6 = alloca %struct.i2c_client*, align 8
  store %struct.pn544_i2c_phy* %0, %struct.pn544_i2c_phy** %3, align 8
  %7 = load %struct.pn544_i2c_phy*, %struct.pn544_i2c_phy** %3, align 8
  %8 = getelementptr inbounds %struct.pn544_i2c_phy, %struct.pn544_i2c_phy* %7, i32 0, i32 0
  %9 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  store %struct.i2c_client* %9, %struct.i2c_client** %6, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %11 = bitcast %struct.pn544_i2c_fw_frame_response* %5 to i8*
  %12 = call i32 @i2c_master_recv(%struct.i2c_client* %10, i8* %11, i32 4)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = icmp ne i64 %14, 4
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %18 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %17, i32 0, i32 0
  %19 = call i32 @nfc_err(i32* %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %69

22:                                               ; preds = %1
  %23 = call i32 @usleep_range(i32 3000, i32 6000)
  %24 = getelementptr inbounds %struct.pn544_i2c_fw_frame_response, %struct.pn544_i2c_fw_frame_response* %5, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %66 [
    i32 0, label %26
    i32 138, label %27
    i32 131, label %30
    i32 140, label %33
    i32 141, label %36
    i32 132, label %39
    i32 134, label %42
    i32 130, label %45
    i32 135, label %48
    i32 136, label %51
    i32 129, label %54
    i32 133, label %57
    i32 137, label %60
    i32 128, label %63
    i32 139, label %63
  ]

26:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %69

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.pn544_i2c_fw_frame_response, %struct.pn544_i2c_fw_frame_response* %5, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %2, align 4
  br label %69

30:                                               ; preds = %22
  %31 = load i32, i32* @ETIMEDOUT, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %69

33:                                               ; preds = %22
  %34 = load i32, i32* @ENODATA, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %69

36:                                               ; preds = %22
  %37 = load i32, i32* @EACCES, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %69

39:                                               ; preds = %22
  %40 = load i32, i32* @EPROTO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %69

42:                                               ; preds = %22
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %69

45:                                               ; preds = %22
  %46 = load i32, i32* @ENOTSUPP, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %69

48:                                               ; preds = %22
  %49 = load i32, i32* @EBADMSG, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %69

51:                                               ; preds = %22
  %52 = load i32, i32* @ENOKEY, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %69

54:                                               ; preds = %22
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %69

57:                                               ; preds = %22
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %69

60:                                               ; preds = %22
  %61 = load i32, i32* @EACCES, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %69

63:                                               ; preds = %22, %22
  %64 = load i32, i32* @EIO, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %69

66:                                               ; preds = %22
  %67 = load i32, i32* @EIO, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %66, %63, %60, %57, %54, %51, %48, %45, %42, %39, %36, %33, %30, %27, %26, %16
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @i2c_master_recv(%struct.i2c_client*, i8*, i32) #1

declare dso_local i32 @nfc_err(i32*, i8*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
