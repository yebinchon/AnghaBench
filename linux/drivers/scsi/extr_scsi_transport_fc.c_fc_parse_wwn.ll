; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_fc.c_fc_parse_wwn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_fc.c_fc_parse_wwn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @fc_parse_wwn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fc_parse_wwn(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [8 x i32], align 16
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  %11 = call i32 @memset(i32* %10, i32 0, i32 32)
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %43, %2
  %13 = load i32, i32* %6, align 4
  %14 = icmp ult i32 %13, 16
  br i1 %14, label %15, label %46

15:                                               ; preds = %12
  %16 = load i8*, i8** %4, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %4, align 8
  %18 = load i8, i8* %16, align 1
  %19 = sext i8 %18 to i32
  %20 = call i32 @hex_to_bin(i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %15
  %24 = load i32, i32* %7, align 4
  %25 = shl i32 %24, 4
  %26 = load i32, i32* %9, align 4
  %27 = or i32 %25, %26
  store i32 %27, i32* %7, align 4
  br label %31

28:                                               ; preds = %15
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %50

31:                                               ; preds = %23
  %32 = load i32, i32* %6, align 4
  %33 = urem i32 %32, 2
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = load i32, i32* %7, align 4
  %37 = and i32 %36, 255
  %38 = load i32, i32* %6, align 4
  %39 = udiv i32 %38, 2
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 %40
  store i32 %37, i32* %41, align 4
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %35, %31
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %6, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %12

46:                                               ; preds = %12
  %47 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  %48 = call i32 @wwn_to_u64(i32* %47)
  %49 = load i32*, i32** %5, align 8
  store i32 %48, i32* %49, align 4
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %46, %28
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @hex_to_bin(i32) #1

declare dso_local i32 @wwn_to_u64(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
