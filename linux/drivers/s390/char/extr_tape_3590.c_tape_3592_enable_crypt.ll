; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_tape_3590.c_tape_3592_enable_crypt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_tape_3590.c_tape_3592_enable_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tape_device = type { i32 }
%struct.tape_request = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tape_device*)* @tape_3592_enable_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tape_3592_enable_crypt(%struct.tape_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tape_device*, align 8
  %4 = alloca %struct.tape_request*, align 8
  store %struct.tape_device* %0, %struct.tape_device** %3, align 8
  %5 = load %struct.tape_device*, %struct.tape_device** %3, align 8
  %6 = call %struct.tape_request* @__tape_3592_enable_crypt(%struct.tape_device* %5)
  store %struct.tape_request* %6, %struct.tape_request** %4, align 8
  %7 = load %struct.tape_request*, %struct.tape_request** %4, align 8
  %8 = call i64 @IS_ERR(%struct.tape_request* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.tape_request*, %struct.tape_request** %4, align 8
  %12 = call i32 @PTR_ERR(%struct.tape_request* %11)
  store i32 %12, i32* %2, align 4
  br label %17

13:                                               ; preds = %1
  %14 = load %struct.tape_device*, %struct.tape_device** %3, align 8
  %15 = load %struct.tape_request*, %struct.tape_request** %4, align 8
  %16 = call i32 @tape_do_io_free(%struct.tape_device* %14, %struct.tape_request* %15)
  store i32 %16, i32* %2, align 4
  br label %17

17:                                               ; preds = %13, %10
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

declare dso_local %struct.tape_request* @__tape_3592_enable_crypt(%struct.tape_device*) #1

declare dso_local i64 @IS_ERR(%struct.tape_request*) #1

declare dso_local i32 @PTR_ERR(%struct.tape_request*) #1

declare dso_local i32 @tape_do_io_free(%struct.tape_device*, %struct.tape_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
