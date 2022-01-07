; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_pingpong.c_pp_init_flds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_pingpong.c_pp_init_flds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_ctx = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"Inbound db %#llx, prev %#llx, next %#llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pp_ctx*)* @pp_init_flds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pp_init_flds(%struct.pp_ctx* %0) #0 {
  %2 = alloca %struct.pp_ctx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pp_ctx* %0, %struct.pp_ctx** %2, align 8
  %6 = load %struct.pp_ctx*, %struct.pp_ctx** %2, align 8
  %7 = getelementptr inbounds %struct.pp_ctx, %struct.pp_ctx* %6, i32 0, i32 3
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = call i32 @ntb_port_number(%struct.TYPE_4__* %8)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.pp_ctx*, %struct.pp_ctx** %2, align 8
  %11 = getelementptr inbounds %struct.pp_ctx, %struct.pp_ctx* %10, i32 0, i32 3
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = call i32 @ntb_peer_port_count(%struct.TYPE_4__* %12)
  store i32 %13, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %28, %1
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %31

18:                                               ; preds = %14
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.pp_ctx*, %struct.pp_ctx** %2, align 8
  %21 = getelementptr inbounds %struct.pp_ctx, %struct.pp_ctx* %20, i32 0, i32 3
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @ntb_peer_port_number(%struct.TYPE_4__* %22, i32 %23)
  %25 = icmp slt i32 %19, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %31

27:                                               ; preds = %18
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %3, align 4
  br label %14

31:                                               ; preds = %26, %14
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @BIT_ULL(i32 %32)
  %34 = load %struct.pp_ctx*, %struct.pp_ctx** %2, align 8
  %35 = getelementptr inbounds %struct.pp_ctx, %struct.pp_ctx* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @GENMASK_ULL(i32 %36, i32 0)
  %38 = ashr i32 %37, 1
  %39 = load %struct.pp_ctx*, %struct.pp_ctx** %2, align 8
  %40 = getelementptr inbounds %struct.pp_ctx, %struct.pp_ctx* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sub nsw i32 %41, 1
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @GENMASK_ULL(i32 %42, i32 %43)
  %45 = load %struct.pp_ctx*, %struct.pp_ctx** %2, align 8
  %46 = getelementptr inbounds %struct.pp_ctx, %struct.pp_ctx* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.pp_ctx*, %struct.pp_ctx** %2, align 8
  %48 = getelementptr inbounds %struct.pp_ctx, %struct.pp_ctx* %47, i32 0, i32 3
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load %struct.pp_ctx*, %struct.pp_ctx** %2, align 8
  %52 = getelementptr inbounds %struct.pp_ctx, %struct.pp_ctx* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.pp_ctx*, %struct.pp_ctx** %2, align 8
  %55 = getelementptr inbounds %struct.pp_ctx, %struct.pp_ctx* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.pp_ctx*, %struct.pp_ctx** %2, align 8
  %58 = getelementptr inbounds %struct.pp_ctx, %struct.pp_ctx* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @dev_dbg(i32* %50, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %56, i32 %59)
  ret void
}

declare dso_local i32 @ntb_port_number(%struct.TYPE_4__*) #1

declare dso_local i32 @ntb_peer_port_count(%struct.TYPE_4__*) #1

declare dso_local i32 @ntb_peer_port_number(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local i32 @GENMASK_ULL(i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
