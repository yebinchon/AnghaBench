; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_idset.c_idset_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_idset.c_idset_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idset = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.idset* (i32, i32)* @idset_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.idset* @idset_new(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.idset*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i64 @bitmap_size(i32 %6, i32 %7)
  %9 = add i64 12, %8
  %10 = call %struct.idset* @vmalloc(i64 %9)
  store %struct.idset* %10, %struct.idset** %5, align 8
  %11 = load %struct.idset*, %struct.idset** %5, align 8
  %12 = icmp ne %struct.idset* %11, null
  br i1 %12, label %13, label %27

13:                                               ; preds = %2
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.idset*, %struct.idset** %5, align 8
  %16 = getelementptr inbounds %struct.idset, %struct.idset* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.idset*, %struct.idset** %5, align 8
  %19 = getelementptr inbounds %struct.idset, %struct.idset* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.idset*, %struct.idset** %5, align 8
  %21 = getelementptr inbounds %struct.idset, %struct.idset* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i64 @bitmap_size(i32 %23, i32 %24)
  %26 = call i32 @memset(i32 %22, i32 0, i64 %25)
  br label %27

27:                                               ; preds = %13, %2
  %28 = load %struct.idset*, %struct.idset** %5, align 8
  ret %struct.idset* %28
}

declare dso_local %struct.idset* @vmalloc(i64) #1

declare dso_local i64 @bitmap_size(i32, i32) #1

declare dso_local i32 @memset(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
