; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_misc.c_cifs_buf_get.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_misc.c_cifs_buf_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_hdr = type { i32 }

@cifs_req_poolp = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@bufAllocCount = common dso_local global i32 0, align 4
@totBufAllocCount = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.smb_hdr* @cifs_buf_get() #0 {
  %1 = alloca %struct.smb_hdr*, align 8
  %2 = alloca i64, align 8
  store %struct.smb_hdr* null, %struct.smb_hdr** %1, align 8
  store i64 4, i64* %2, align 8
  %3 = load i32, i32* @cifs_req_poolp, align 4
  %4 = load i32, i32* @GFP_NOFS, align 4
  %5 = call %struct.smb_hdr* @mempool_alloc(i32 %3, i32 %4)
  store %struct.smb_hdr* %5, %struct.smb_hdr** %1, align 8
  %6 = load %struct.smb_hdr*, %struct.smb_hdr** %1, align 8
  %7 = load i64, i64* %2, align 8
  %8 = add i64 %7, 3
  %9 = call i32 @memset(%struct.smb_hdr* %6, i32 0, i64 %8)
  %10 = call i32 @atomic_inc(i32* @bufAllocCount)
  %11 = load %struct.smb_hdr*, %struct.smb_hdr** %1, align 8
  ret %struct.smb_hdr* %11
}

declare dso_local %struct.smb_hdr* @mempool_alloc(i32, i32) #1

declare dso_local i32 @memset(%struct.smb_hdr*, i32, i64) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
