; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/s3fwrn5/extr_i2c.c_s3fwrn5_i2c_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/s3fwrn5/extr_i2c.c_s3fwrn5_i2c_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.s3fwrn5_i2c_phy = type { i32, i32, i32 }

@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.sk_buff*)* @s3fwrn5_i2c_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3fwrn5_i2c_write(i8* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.s3fwrn5_i2c_phy*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.s3fwrn5_i2c_phy*
  store %struct.s3fwrn5_i2c_phy* %9, %struct.s3fwrn5_i2c_phy** %6, align 8
  %10 = load %struct.s3fwrn5_i2c_phy*, %struct.s3fwrn5_i2c_phy** %6, align 8
  %11 = getelementptr inbounds %struct.s3fwrn5_i2c_phy, %struct.s3fwrn5_i2c_phy* %10, i32 0, i32 1
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.s3fwrn5_i2c_phy*, %struct.s3fwrn5_i2c_phy** %6, align 8
  %14 = getelementptr inbounds %struct.s3fwrn5_i2c_phy, %struct.s3fwrn5_i2c_phy* %13, i32 0, i32 0
  store i32 0, i32* %14, align 4
  %15 = load %struct.s3fwrn5_i2c_phy*, %struct.s3fwrn5_i2c_phy** %6, align 8
  %16 = getelementptr inbounds %struct.s3fwrn5_i2c_phy, %struct.s3fwrn5_i2c_phy* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @i2c_master_send(i32 %17, i32 %20, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @EREMOTEIO, align 4
  %27 = sub nsw i32 0, %26
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %2
  %30 = call i32 @usleep_range(i32 110000, i32 120000)
  %31 = load %struct.s3fwrn5_i2c_phy*, %struct.s3fwrn5_i2c_phy** %6, align 8
  %32 = getelementptr inbounds %struct.s3fwrn5_i2c_phy, %struct.s3fwrn5_i2c_phy* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @i2c_master_send(i32 %33, i32 %36, i32 %39)
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %29, %2
  %42 = load %struct.s3fwrn5_i2c_phy*, %struct.s3fwrn5_i2c_phy** %6, align 8
  %43 = getelementptr inbounds %struct.s3fwrn5_i2c_phy, %struct.s3fwrn5_i2c_phy* %42, i32 0, i32 1
  %44 = call i32 @mutex_unlock(i32* %43)
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %3, align 4
  br label %59

49:                                               ; preds = %41
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %50, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i32, i32* @EREMOTEIO, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %59

58:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %55, %47
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_master_send(i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
