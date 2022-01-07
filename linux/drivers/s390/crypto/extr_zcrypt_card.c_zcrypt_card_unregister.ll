; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_zcrypt_card.c_zcrypt_card_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_zcrypt_card.c_zcrypt_card_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zcrypt_card = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@DBF_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"card=%02x unregister\0A\00", align 1
@zcrypt_list_lock = common dso_local global i32 0, align 4
@zcrypt_card_attr_group = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zcrypt_card_unregister(%struct.zcrypt_card* %0) #0 {
  %2 = alloca %struct.zcrypt_card*, align 8
  store %struct.zcrypt_card* %0, %struct.zcrypt_card** %2, align 8
  %3 = load i32, i32* @DBF_INFO, align 4
  %4 = load %struct.zcrypt_card*, %struct.zcrypt_card** %2, align 8
  %5 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %4, i32 0, i32 0
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @ZCRYPT_DBF(i32 %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = call i32 @spin_lock(i32* @zcrypt_list_lock)
  %11 = load %struct.zcrypt_card*, %struct.zcrypt_card** %2, align 8
  %12 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %11, i32 0, i32 1
  %13 = call i32 @list_del_init(i32* %12)
  %14 = call i32 @spin_unlock(i32* @zcrypt_list_lock)
  %15 = load %struct.zcrypt_card*, %struct.zcrypt_card** %2, align 8
  %16 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = call i32 @sysfs_remove_group(i32* %20, i32* @zcrypt_card_attr_group)
  ret void
}

declare dso_local i32 @ZCRYPT_DBF(i32, i8*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
