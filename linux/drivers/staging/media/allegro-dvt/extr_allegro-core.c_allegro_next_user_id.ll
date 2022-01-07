; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_allegro-core.c_allegro_next_user_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_allegro-core.c_allegro_next_user_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.allegro_dev = type { i64 }

@EBUSY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.allegro_dev*)* @allegro_next_user_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @allegro_next_user_id(%struct.allegro_dev* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.allegro_dev*, align 8
  store %struct.allegro_dev* %0, %struct.allegro_dev** %3, align 8
  %4 = load %struct.allegro_dev*, %struct.allegro_dev** %3, align 8
  %5 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp eq i64 %6, -1
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i64, i64* @EBUSY, align 8
  %10 = sub i64 0, %9
  store i64 %10, i64* %2, align 8
  br label %16

11:                                               ; preds = %1
  %12 = load %struct.allegro_dev*, %struct.allegro_dev** %3, align 8
  %13 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i64 @ffz(i64 %14)
  store i64 %15, i64* %2, align 8
  br label %16

16:                                               ; preds = %11, %8
  %17 = load i64, i64* %2, align 8
  ret i64 %17
}

declare dso_local i64 @ffz(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
