; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/extr_nfcsim.c_nfcsim_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/extr_nfcsim.c_nfcsim_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_digital_dev = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nfcsim = type { i32, i32, i32, i32, i64, i32, i8*, i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"Device is down\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"dropping frame (out of %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfc_digital_dev*, %struct.sk_buff*, i32, i32, i8*)* @nfcsim_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfcsim_send(%struct.nfc_digital_dev* %0, %struct.sk_buff* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfc_digital_dev*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.nfcsim*, align 8
  %13 = alloca i32, align 4
  store %struct.nfc_digital_dev* %0, %struct.nfc_digital_dev** %7, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %14 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %7, align 8
  %15 = call %struct.nfcsim* @nfc_digital_get_drvdata(%struct.nfc_digital_dev* %14)
  store %struct.nfcsim* %15, %struct.nfcsim** %12, align 8
  %16 = load %struct.nfcsim*, %struct.nfcsim** %12, align 8
  %17 = getelementptr inbounds %struct.nfcsim, %struct.nfcsim* %16, i32 0, i32 9
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %5
  %21 = load %struct.nfcsim*, %struct.nfcsim** %12, align 8
  %22 = call i32 @NFCSIM_ERR(%struct.nfcsim* %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %79

25:                                               ; preds = %5
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.nfcsim*, %struct.nfcsim** %12, align 8
  %28 = getelementptr inbounds %struct.nfcsim, %struct.nfcsim* %27, i32 0, i32 8
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.nfcsim*, %struct.nfcsim** %12, align 8
  %31 = getelementptr inbounds %struct.nfcsim, %struct.nfcsim* %30, i32 0, i32 7
  store i32 %29, i32* %31, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = load %struct.nfcsim*, %struct.nfcsim** %12, align 8
  %34 = getelementptr inbounds %struct.nfcsim, %struct.nfcsim* %33, i32 0, i32 6
  store i8* %32, i8** %34, align 8
  %35 = load %struct.nfcsim*, %struct.nfcsim** %12, align 8
  %36 = getelementptr inbounds %struct.nfcsim, %struct.nfcsim* %35, i32 0, i32 5
  %37 = call i32 @schedule_work(i32* %36)
  %38 = load %struct.nfcsim*, %struct.nfcsim** %12, align 8
  %39 = getelementptr inbounds %struct.nfcsim, %struct.nfcsim* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %25
  %43 = load %struct.nfcsim*, %struct.nfcsim** %12, align 8
  %44 = load %struct.nfcsim*, %struct.nfcsim** %12, align 8
  %45 = getelementptr inbounds %struct.nfcsim, %struct.nfcsim* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @NFCSIM_DBG(%struct.nfcsim* %43, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %46)
  %48 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %49 = call i32 @dev_kfree_skb(%struct.sk_buff* %48)
  %50 = load %struct.nfcsim*, %struct.nfcsim** %12, align 8
  %51 = getelementptr inbounds %struct.nfcsim, %struct.nfcsim* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, -1
  store i64 %53, i64* %51, align 8
  store i32 0, i32* %6, align 4
  br label %79

54:                                               ; preds = %25
  %55 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %56 = icmp ne %struct.sk_buff* %55, null
  br i1 %56, label %57, label %78

57:                                               ; preds = %54
  %58 = load %struct.nfcsim*, %struct.nfcsim** %12, align 8
  %59 = getelementptr inbounds %struct.nfcsim, %struct.nfcsim* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %62 = load %struct.nfcsim*, %struct.nfcsim** %12, align 8
  %63 = getelementptr inbounds %struct.nfcsim, %struct.nfcsim* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.nfcsim*, %struct.nfcsim** %12, align 8
  %66 = getelementptr inbounds %struct.nfcsim, %struct.nfcsim* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @nfcsim_link_set_skb(i32 %60, %struct.sk_buff* %61, i32 %64, i32 %67)
  %69 = call i32 @get_random_bytes(i32* %13, i32 1)
  %70 = load i32, i32* %13, align 4
  %71 = and i32 %70, 7
  %72 = add nsw i32 3, %71
  store i32 %72, i32* %13, align 4
  %73 = load %struct.nfcsim*, %struct.nfcsim** %12, align 8
  %74 = getelementptr inbounds %struct.nfcsim, %struct.nfcsim* %73, i32 0, i32 0
  %75 = load i32, i32* %13, align 4
  %76 = call i32 @msecs_to_jiffies(i32 %75)
  %77 = call i32 @schedule_delayed_work(i32* %74, i32 %76)
  br label %78

78:                                               ; preds = %57, %54
  store i32 0, i32* %6, align 4
  br label %79

79:                                               ; preds = %78, %42, %20
  %80 = load i32, i32* %6, align 4
  ret i32 %80
}

declare dso_local %struct.nfcsim* @nfc_digital_get_drvdata(%struct.nfc_digital_dev*) #1

declare dso_local i32 @NFCSIM_ERR(%struct.nfcsim*, i8*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @NFCSIM_DBG(%struct.nfcsim*, i8*, i64) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @nfcsim_link_set_skb(i32, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @get_random_bytes(i32*, i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
