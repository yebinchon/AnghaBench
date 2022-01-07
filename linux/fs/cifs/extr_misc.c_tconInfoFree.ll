; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_misc.c_tconInfoFree.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_misc.c_tconInfoFree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_tcon = type { %struct.cifs_tcon*, %struct.TYPE_2__, i32, %struct.cifs_tcon* }
%struct.TYPE_2__ = type { %struct.cifs_tcon* }

@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Null buffer passed to tconInfoFree\0A\00", align 1
@tconInfoAllocCount = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tconInfoFree(%struct.cifs_tcon* %0) #0 {
  %2 = alloca %struct.cifs_tcon*, align 8
  store %struct.cifs_tcon* %0, %struct.cifs_tcon** %2, align 8
  %3 = load %struct.cifs_tcon*, %struct.cifs_tcon** %2, align 8
  %4 = icmp eq %struct.cifs_tcon* %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load i32, i32* @FYI, align 4
  %7 = call i32 @cifs_dbg(i32 %6, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %25

8:                                                ; preds = %1
  %9 = call i32 @atomic_dec(i32* @tconInfoAllocCount)
  %10 = load %struct.cifs_tcon*, %struct.cifs_tcon** %2, align 8
  %11 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %10, i32 0, i32 3
  %12 = load %struct.cifs_tcon*, %struct.cifs_tcon** %11, align 8
  %13 = call i32 @kfree(%struct.cifs_tcon* %12)
  %14 = load %struct.cifs_tcon*, %struct.cifs_tcon** %2, align 8
  %15 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @kzfree(i32 %16)
  %18 = load %struct.cifs_tcon*, %struct.cifs_tcon** %2, align 8
  %19 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.cifs_tcon*, %struct.cifs_tcon** %20, align 8
  %22 = call i32 @kfree(%struct.cifs_tcon* %21)
  %23 = load %struct.cifs_tcon*, %struct.cifs_tcon** %2, align 8
  %24 = call i32 @kfree(%struct.cifs_tcon* %23)
  br label %25

25:                                               ; preds = %8, %5
  ret void
}

declare dso_local i32 @cifs_dbg(i32, i8*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @kfree(%struct.cifs_tcon*) #1

declare dso_local i32 @kzfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
