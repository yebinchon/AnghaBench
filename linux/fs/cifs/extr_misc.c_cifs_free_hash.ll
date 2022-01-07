; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_misc.c_cifs_free_hash.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_misc.c_cifs_free_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_shash = type { i32 }
%struct.sdesc = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cifs_free_hash(%struct.crypto_shash** %0, %struct.sdesc** %1) #0 {
  %3 = alloca %struct.crypto_shash**, align 8
  %4 = alloca %struct.sdesc**, align 8
  store %struct.crypto_shash** %0, %struct.crypto_shash*** %3, align 8
  store %struct.sdesc** %1, %struct.sdesc*** %4, align 8
  %5 = load %struct.sdesc**, %struct.sdesc*** %4, align 8
  %6 = load %struct.sdesc*, %struct.sdesc** %5, align 8
  %7 = call i32 @kfree(%struct.sdesc* %6)
  %8 = load %struct.sdesc**, %struct.sdesc*** %4, align 8
  store %struct.sdesc* null, %struct.sdesc** %8, align 8
  %9 = load %struct.crypto_shash**, %struct.crypto_shash*** %3, align 8
  %10 = load %struct.crypto_shash*, %struct.crypto_shash** %9, align 8
  %11 = icmp ne %struct.crypto_shash* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.crypto_shash**, %struct.crypto_shash*** %3, align 8
  %14 = load %struct.crypto_shash*, %struct.crypto_shash** %13, align 8
  %15 = call i32 @crypto_free_shash(%struct.crypto_shash* %14)
  br label %16

16:                                               ; preds = %12, %2
  %17 = load %struct.crypto_shash**, %struct.crypto_shash*** %3, align 8
  store %struct.crypto_shash* null, %struct.crypto_shash** %17, align 8
  ret void
}

declare dso_local i32 @kfree(%struct.sdesc*) #1

declare dso_local i32 @crypto_free_shash(%struct.crypto_shash*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
