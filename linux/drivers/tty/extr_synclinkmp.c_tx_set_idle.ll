; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_synclinkmp.c_tx_set_idle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_synclinkmp.c_tx_set_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@IDL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @tx_set_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tx_set_idle(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i8, align 1
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  store i8 -1, i8* %3, align 1
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %14 [
    i32 132, label %7
    i32 133, label %8
    i32 128, label %9
    i32 130, label %10
    i32 134, label %11
    i32 129, label %12
    i32 131, label %13
  ]

7:                                                ; preds = %1
  store i8 126, i8* %3, align 1
  br label %14

8:                                                ; preds = %1
  store i8 -86, i8* %3, align 1
  br label %14

9:                                                ; preds = %1
  store i8 0, i8* %3, align 1
  br label %14

10:                                               ; preds = %1
  store i8 -1, i8* %3, align 1
  br label %14

11:                                               ; preds = %1
  store i8 -86, i8* %3, align 1
  br label %14

12:                                               ; preds = %1
  store i8 0, i8* %3, align 1
  br label %14

13:                                               ; preds = %1
  store i8 -1, i8* %3, align 1
  br label %14

14:                                               ; preds = %1, %13, %12, %11, %10, %9, %8, %7
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %16 = load i32, i32* @IDL, align 4
  %17 = load i8, i8* %3, align 1
  %18 = call i32 @write_reg(%struct.TYPE_4__* %15, i32 %16, i8 zeroext %17)
  ret void
}

declare dso_local i32 @write_reg(%struct.TYPE_4__*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
