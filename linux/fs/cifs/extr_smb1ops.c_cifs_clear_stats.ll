; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb1ops.c_cifs_clear_stats.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb1ops.c_cifs_clear_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_tcon = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cifs_tcon*)* @cifs_clear_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cifs_clear_stats(%struct.cifs_tcon* %0) #0 {
  %2 = alloca %struct.cifs_tcon*, align 8
  store %struct.cifs_tcon* %0, %struct.cifs_tcon** %2, align 8
  %3 = load %struct.cifs_tcon*, %struct.cifs_tcon** %2, align 8
  %4 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 20
  %7 = call i32 @atomic_set(i32* %6, i32 0)
  %8 = load %struct.cifs_tcon*, %struct.cifs_tcon** %2, align 8
  %9 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 19
  %12 = call i32 @atomic_set(i32* %11, i32 0)
  %13 = load %struct.cifs_tcon*, %struct.cifs_tcon** %2, align 8
  %14 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 18
  %17 = call i32 @atomic_set(i32* %16, i32 0)
  %18 = load %struct.cifs_tcon*, %struct.cifs_tcon** %2, align 8
  %19 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 17
  %22 = call i32 @atomic_set(i32* %21, i32 0)
  %23 = load %struct.cifs_tcon*, %struct.cifs_tcon** %2, align 8
  %24 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 16
  %27 = call i32 @atomic_set(i32* %26, i32 0)
  %28 = load %struct.cifs_tcon*, %struct.cifs_tcon** %2, align 8
  %29 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 15
  %32 = call i32 @atomic_set(i32* %31, i32 0)
  %33 = load %struct.cifs_tcon*, %struct.cifs_tcon** %2, align 8
  %34 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 14
  %37 = call i32 @atomic_set(i32* %36, i32 0)
  %38 = load %struct.cifs_tcon*, %struct.cifs_tcon** %2, align 8
  %39 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 13
  %42 = call i32 @atomic_set(i32* %41, i32 0)
  %43 = load %struct.cifs_tcon*, %struct.cifs_tcon** %2, align 8
  %44 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 12
  %47 = call i32 @atomic_set(i32* %46, i32 0)
  %48 = load %struct.cifs_tcon*, %struct.cifs_tcon** %2, align 8
  %49 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 11
  %52 = call i32 @atomic_set(i32* %51, i32 0)
  %53 = load %struct.cifs_tcon*, %struct.cifs_tcon** %2, align 8
  %54 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 10
  %57 = call i32 @atomic_set(i32* %56, i32 0)
  %58 = load %struct.cifs_tcon*, %struct.cifs_tcon** %2, align 8
  %59 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 9
  %62 = call i32 @atomic_set(i32* %61, i32 0)
  %63 = load %struct.cifs_tcon*, %struct.cifs_tcon** %2, align 8
  %64 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 8
  %67 = call i32 @atomic_set(i32* %66, i32 0)
  %68 = load %struct.cifs_tcon*, %struct.cifs_tcon** %2, align 8
  %69 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 7
  %72 = call i32 @atomic_set(i32* %71, i32 0)
  %73 = load %struct.cifs_tcon*, %struct.cifs_tcon** %2, align 8
  %74 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 6
  %77 = call i32 @atomic_set(i32* %76, i32 0)
  %78 = load %struct.cifs_tcon*, %struct.cifs_tcon** %2, align 8
  %79 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 5
  %82 = call i32 @atomic_set(i32* %81, i32 0)
  %83 = load %struct.cifs_tcon*, %struct.cifs_tcon** %2, align 8
  %84 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 4
  %87 = call i32 @atomic_set(i32* %86, i32 0)
  %88 = load %struct.cifs_tcon*, %struct.cifs_tcon** %2, align 8
  %89 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 3
  %92 = call i32 @atomic_set(i32* %91, i32 0)
  %93 = load %struct.cifs_tcon*, %struct.cifs_tcon** %2, align 8
  %94 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 2
  %97 = call i32 @atomic_set(i32* %96, i32 0)
  %98 = load %struct.cifs_tcon*, %struct.cifs_tcon** %2, align 8
  %99 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 1
  %102 = call i32 @atomic_set(i32* %101, i32 0)
  %103 = load %struct.cifs_tcon*, %struct.cifs_tcon** %2, align 8
  %104 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = call i32 @atomic_set(i32* %106, i32 0)
  ret void
}

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
