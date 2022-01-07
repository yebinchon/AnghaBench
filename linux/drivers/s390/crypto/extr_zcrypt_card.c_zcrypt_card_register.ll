; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_zcrypt_card.c_zcrypt_card_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_zcrypt_card.c_zcrypt_card_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zcrypt_card = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@zcrypt_card_attr_group = common dso_local global i32 0, align 4
@zcrypt_list_lock = common dso_local global i32 0, align 4
@zcrypt_card_list = common dso_local global i32 0, align 4
@DBF_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"card=%02x register online=1\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zcrypt_card_register(%struct.zcrypt_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zcrypt_card*, align 8
  %4 = alloca i32, align 4
  store %struct.zcrypt_card* %0, %struct.zcrypt_card** %3, align 8
  %5 = load %struct.zcrypt_card*, %struct.zcrypt_card** %3, align 8
  %6 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %5, i32 0, i32 1
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = call i32 @sysfs_create_group(i32* %10, i32* @zcrypt_card_attr_group)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %2, align 4
  br label %32

16:                                               ; preds = %1
  %17 = call i32 @spin_lock(i32* @zcrypt_list_lock)
  %18 = load %struct.zcrypt_card*, %struct.zcrypt_card** %3, align 8
  %19 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %18, i32 0, i32 2
  %20 = call i32 @list_add_tail(i32* %19, i32* @zcrypt_card_list)
  %21 = call i32 @spin_unlock(i32* @zcrypt_list_lock)
  %22 = load %struct.zcrypt_card*, %struct.zcrypt_card** %3, align 8
  %23 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load i32, i32* @DBF_INFO, align 4
  %25 = load %struct.zcrypt_card*, %struct.zcrypt_card** %3, align 8
  %26 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %25, i32 0, i32 1
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ZCRYPT_DBF(i32 %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %16, %14
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ZCRYPT_DBF(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
