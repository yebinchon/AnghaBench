; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_check-integrity.c_btrfsic_print_add_link.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_check-integrity.c_btrfsic_print_add_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfsic_state = type { i32 }
%struct.btrfsic_block_link = type { %struct.TYPE_4__*, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [67 x i8] c"Add %u* link from %c @%llu (%s/%llu/%d) to %c @%llu (%s/%llu/%d).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfsic_state*, %struct.btrfsic_block_link*)* @btrfsic_print_add_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btrfsic_print_add_link(%struct.btrfsic_state* %0, %struct.btrfsic_block_link* %1) #0 {
  %3 = alloca %struct.btrfsic_state*, align 8
  %4 = alloca %struct.btrfsic_block_link*, align 8
  store %struct.btrfsic_state* %0, %struct.btrfsic_state** %3, align 8
  store %struct.btrfsic_block_link* %1, %struct.btrfsic_block_link** %4, align 8
  %5 = load %struct.btrfsic_block_link*, %struct.btrfsic_block_link** %4, align 8
  %6 = getelementptr inbounds %struct.btrfsic_block_link, %struct.btrfsic_block_link* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.btrfsic_state*, %struct.btrfsic_state** %3, align 8
  %9 = load %struct.btrfsic_block_link*, %struct.btrfsic_block_link** %4, align 8
  %10 = getelementptr inbounds %struct.btrfsic_block_link, %struct.btrfsic_block_link* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = call i32 @btrfsic_get_block_type(%struct.btrfsic_state* %8, %struct.TYPE_4__* %11)
  %13 = load %struct.btrfsic_block_link*, %struct.btrfsic_block_link** %4, align 8
  %14 = getelementptr inbounds %struct.btrfsic_block_link, %struct.btrfsic_block_link* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.btrfsic_block_link*, %struct.btrfsic_block_link** %4, align 8
  %19 = getelementptr inbounds %struct.btrfsic_block_link, %struct.btrfsic_block_link* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.btrfsic_block_link*, %struct.btrfsic_block_link** %4, align 8
  %26 = getelementptr inbounds %struct.btrfsic_block_link, %struct.btrfsic_block_link* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.btrfsic_block_link*, %struct.btrfsic_block_link** %4, align 8
  %31 = getelementptr inbounds %struct.btrfsic_block_link, %struct.btrfsic_block_link* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.btrfsic_state*, %struct.btrfsic_state** %3, align 8
  %36 = load %struct.btrfsic_block_link*, %struct.btrfsic_block_link** %4, align 8
  %37 = getelementptr inbounds %struct.btrfsic_block_link, %struct.btrfsic_block_link* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = call i32 @btrfsic_get_block_type(%struct.btrfsic_state* %35, %struct.TYPE_4__* %38)
  %40 = load %struct.btrfsic_block_link*, %struct.btrfsic_block_link** %4, align 8
  %41 = getelementptr inbounds %struct.btrfsic_block_link, %struct.btrfsic_block_link* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.btrfsic_block_link*, %struct.btrfsic_block_link** %4, align 8
  %46 = getelementptr inbounds %struct.btrfsic_block_link, %struct.btrfsic_block_link* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.btrfsic_block_link*, %struct.btrfsic_block_link** %4, align 8
  %53 = getelementptr inbounds %struct.btrfsic_block_link, %struct.btrfsic_block_link* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.btrfsic_block_link*, %struct.btrfsic_block_link** %4, align 8
  %58 = getelementptr inbounds %struct.btrfsic_block_link, %struct.btrfsic_block_link* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @pr_info(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %12, i32 %17, i32 %24, i32 %29, i32 %34, i32 %39, i32 %44, i32 %51, i32 %56, i32 %61)
  ret void
}

declare dso_local i32 @pr_info(i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @btrfsic_get_block_type(%struct.btrfsic_state*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
