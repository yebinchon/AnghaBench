; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_keyboard.c_k_self.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_keyboard.c_k_self.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kbd_data = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kbd_data*, i8)* @k_self to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @k_self(%struct.kbd_data* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.kbd_data*, align 8
  %4 = alloca i8, align 1
  store %struct.kbd_data* %0, %struct.kbd_data** %3, align 8
  store i8 %1, i8* %4, align 1
  %5 = load %struct.kbd_data*, %struct.kbd_data** %3, align 8
  %6 = getelementptr inbounds %struct.kbd_data, %struct.kbd_data* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.kbd_data*, %struct.kbd_data** %3, align 8
  %11 = load i8, i8* %4, align 1
  %12 = call zeroext i8 @handle_diacr(%struct.kbd_data* %10, i8 zeroext %11)
  store i8 %12, i8* %4, align 1
  br label %13

13:                                               ; preds = %9, %2
  %14 = load %struct.kbd_data*, %struct.kbd_data** %3, align 8
  %15 = getelementptr inbounds %struct.kbd_data, %struct.kbd_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i8, i8* %4, align 1
  %18 = call i32 @kbd_put_queue(i32 %16, i8 zeroext %17)
  ret void
}

declare dso_local zeroext i8 @handle_diacr(%struct.kbd_data*, i8 zeroext) #1

declare dso_local i32 @kbd_put_queue(i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
