; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_zcrypt_api.c_zcrypt_card_compare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_zcrypt_api.c_zcrypt_card_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zcrypt_card = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zcrypt_card*, %struct.zcrypt_card*, i32, i32)* @zcrypt_card_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zcrypt_card_compare(%struct.zcrypt_card* %0, %struct.zcrypt_card* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.zcrypt_card*, align 8
  %7 = alloca %struct.zcrypt_card*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.zcrypt_card* %0, %struct.zcrypt_card** %6, align 8
  store %struct.zcrypt_card* %1, %struct.zcrypt_card** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load %struct.zcrypt_card*, %struct.zcrypt_card** %7, align 8
  %11 = icmp ne %struct.zcrypt_card* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %49

13:                                               ; preds = %4
  %14 = load %struct.zcrypt_card*, %struct.zcrypt_card** %6, align 8
  %15 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %14, i32 0, i32 1
  %16 = call i64 @atomic_read(i32* %15)
  %17 = load i32, i32* %8, align 4
  %18 = zext i32 %17 to i64
  %19 = add nsw i64 %18, %16
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %8, align 4
  %21 = load %struct.zcrypt_card*, %struct.zcrypt_card** %7, align 8
  %22 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %21, i32 0, i32 1
  %23 = call i64 @atomic_read(i32* %22)
  %24 = load i32, i32* %9, align 4
  %25 = zext i32 %24 to i64
  %26 = add nsw i64 %25, %23
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %13
  %32 = load %struct.zcrypt_card*, %struct.zcrypt_card** %6, align 8
  %33 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = call i64 @atomic_read(i32* %35)
  %37 = load %struct.zcrypt_card*, %struct.zcrypt_card** %7, align 8
  %38 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = call i64 @atomic_read(i32* %40)
  %42 = icmp sgt i64 %36, %41
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %5, align 4
  br label %49

44:                                               ; preds = %13
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ugt i32 %45, %46
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %44, %31, %12
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i64 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
