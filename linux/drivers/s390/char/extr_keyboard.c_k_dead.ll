; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_keyboard.c_k_dead.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_keyboard.c_k_dead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kbd_data = type { i8 }

@ret_diacr = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kbd_data*, i8)* @k_dead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @k_dead(%struct.kbd_data* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.kbd_data*, align 8
  %4 = alloca i8, align 1
  store %struct.kbd_data* %0, %struct.kbd_data** %3, align 8
  store i8 %1, i8* %4, align 1
  %5 = load i8*, i8** @ret_diacr, align 8
  %6 = load i8, i8* %4, align 1
  %7 = zext i8 %6 to i64
  %8 = getelementptr inbounds i8, i8* %5, i64 %7
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %4, align 1
  %10 = load %struct.kbd_data*, %struct.kbd_data** %3, align 8
  %11 = getelementptr inbounds %struct.kbd_data, %struct.kbd_data* %10, i32 0, i32 0
  %12 = load i8, i8* %11, align 1
  %13 = zext i8 %12 to i32
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.kbd_data*, %struct.kbd_data** %3, align 8
  %17 = load i8, i8* %4, align 1
  %18 = call zeroext i8 @handle_diacr(%struct.kbd_data* %16, i8 zeroext %17)
  %19 = zext i8 %18 to i32
  br label %23

20:                                               ; preds = %2
  %21 = load i8, i8* %4, align 1
  %22 = zext i8 %21 to i32
  br label %23

23:                                               ; preds = %20, %15
  %24 = phi i32 [ %19, %15 ], [ %22, %20 ]
  %25 = trunc i32 %24 to i8
  %26 = load %struct.kbd_data*, %struct.kbd_data** %3, align 8
  %27 = getelementptr inbounds %struct.kbd_data, %struct.kbd_data* %26, i32 0, i32 0
  store i8 %25, i8* %27, align 1
  ret void
}

declare dso_local zeroext i8 @handle_diacr(%struct.kbd_data*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
