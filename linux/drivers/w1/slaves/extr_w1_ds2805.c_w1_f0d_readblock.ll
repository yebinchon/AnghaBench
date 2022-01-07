; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_ds2805.c_w1_f0d_readblock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_ds2805.c_w1_f0d_readblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w1_slave = type { i32, i32 }

@W1_F0D_READ_MAXLEN = common dso_local global i32 0, align 4
@W1_F0D_READ_RETRIES = common dso_local global i32 0, align 4
@W1_F0D_READ_EEPROM = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [31 x i8] c"proof reading failed %d times\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.w1_slave*, i32, i32, i8*)* @w1_f0d_readblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w1_f0d_readblock(%struct.w1_slave* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.w1_slave*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca [3 x i8], align 1
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.w1_slave* %0, %struct.w1_slave** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %15 = load i32, i32* @W1_F0D_READ_MAXLEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %11, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %12, align 8
  %19 = load i32, i32* @W1_F0D_READ_RETRIES, align 4
  store i32 %19, i32* %13, align 4
  br label %20

20:                                               ; preds = %65, %4
  %21 = load i8, i8* @W1_F0D_READ_EEPROM, align 1
  %22 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 0
  store i8 %21, i8* %22, align 1
  %23 = load i32, i32* %7, align 4
  %24 = and i32 %23, 127
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 1
  store i8 %25, i8* %26, align 1
  %27 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 2
  store i8 0, i8* %27, align 1
  %28 = load %struct.w1_slave*, %struct.w1_slave** %6, align 8
  %29 = call i64 @w1_reset_select_slave(%struct.w1_slave* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %74

32:                                               ; preds = %20
  %33 = load %struct.w1_slave*, %struct.w1_slave** %6, align 8
  %34 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 0
  %37 = call i32 @w1_write_block(i32 %35, i8* %36, i32 3)
  %38 = load %struct.w1_slave*, %struct.w1_slave** %6, align 8
  %39 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i8*, i8** %9, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @w1_read_block(i32 %40, i8* %41, i32 %42)
  %44 = load %struct.w1_slave*, %struct.w1_slave** %6, align 8
  %45 = call i64 @w1_reset_select_slave(%struct.w1_slave* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %32
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %74

48:                                               ; preds = %32
  %49 = load %struct.w1_slave*, %struct.w1_slave** %6, align 8
  %50 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 0
  %53 = call i32 @w1_write_block(i32 %51, i8* %52, i32 3)
  %54 = load %struct.w1_slave*, %struct.w1_slave** %6, align 8
  %55 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @w1_read_block(i32 %56, i8* %18, i32 %57)
  %59 = load i8*, i8** %9, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @memcmp(i8* %18, i8* %59, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %48
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %74

64:                                               ; preds = %48
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %13, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %13, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %20, label %69

69:                                               ; preds = %65
  %70 = load %struct.w1_slave*, %struct.w1_slave** %6, align 8
  %71 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %70, i32 0, i32 0
  %72 = load i32, i32* @W1_F0D_READ_RETRIES, align 4
  %73 = call i32 @dev_err(i32* %71, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %72)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %74

74:                                               ; preds = %69, %63, %47, %31
  %75 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %75)
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @w1_reset_select_slave(%struct.w1_slave*) #2

declare dso_local i32 @w1_write_block(i32, i8*, i32) #2

declare dso_local i32 @w1_read_block(i32, i8*, i32) #2

declare dso_local i32 @memcmp(i8*, i8*, i32) #2

declare dso_local i32 @dev_err(i32*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
