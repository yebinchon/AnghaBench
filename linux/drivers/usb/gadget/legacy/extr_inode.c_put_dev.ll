; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/legacy/extr_inode.c_put_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/legacy/extr_inode.c_put_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dev_data = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dev_data*)* @put_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_dev(%struct.dev_data* %0) #0 {
  %2 = alloca %struct.dev_data*, align 8
  store %struct.dev_data* %0, %struct.dev_data** %2, align 8
  %3 = load %struct.dev_data*, %struct.dev_data** %2, align 8
  %4 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %3, i32 0, i32 1
  %5 = call i32 @refcount_dec_and_test(i32* %4)
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i64 @likely(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %19

12:                                               ; preds = %1
  %13 = load %struct.dev_data*, %struct.dev_data** %2, align 8
  %14 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %13, i32 0, i32 0
  %15 = call i32 @waitqueue_active(i32* %14)
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load %struct.dev_data*, %struct.dev_data** %2, align 8
  %18 = call i32 @kfree(%struct.dev_data* %17)
  br label %19

19:                                               ; preds = %12, %11
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @refcount_dec_and_test(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @waitqueue_active(i32*) #1

declare dso_local i32 @kfree(%struct.dev_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
