; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_transport.c_send_lock_cancel.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_transport.c_send_lock_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_tcon = type { %struct.cifs_ses* }
%struct.cifs_ses = type { i32 }
%struct.smb_hdr = type { i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32 }

@LOCKING_ANDX_CANCEL_LOCK = common dso_local global i32 0, align 4
@LOCKING_ANDX_LARGE_FILES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cifs_tcon*, %struct.smb_hdr*, %struct.smb_hdr*)* @send_lock_cancel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_lock_cancel(i32 %0, %struct.cifs_tcon* %1, %struct.smb_hdr* %2, %struct.smb_hdr* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cifs_tcon*, align 8
  %7 = alloca %struct.smb_hdr*, align 8
  %8 = alloca %struct.smb_hdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.cifs_ses*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.cifs_tcon* %1, %struct.cifs_tcon** %6, align 8
  store %struct.smb_hdr* %2, %struct.smb_hdr** %7, align 8
  store %struct.smb_hdr* %3, %struct.smb_hdr** %8, align 8
  %12 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %13 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %12, i32 0, i32 0
  %14 = load %struct.cifs_ses*, %struct.cifs_ses** %13, align 8
  store %struct.cifs_ses* %14, %struct.cifs_ses** %10, align 8
  %15 = load %struct.smb_hdr*, %struct.smb_hdr** %7, align 8
  %16 = bitcast %struct.smb_hdr* %15 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %11, align 8
  %17 = load i32, i32* @LOCKING_ANDX_CANCEL_LOCK, align 4
  %18 = load i32, i32* @LOCKING_ANDX_LARGE_FILES, align 4
  %19 = or i32 %17, %18
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  store i64 0, i64* %23, align 8
  %24 = load %struct.cifs_ses*, %struct.cifs_ses** %10, align 8
  %25 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @get_next_mid(i32 %26)
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.cifs_ses*, %struct.cifs_ses** %10, align 8
  %33 = load %struct.smb_hdr*, %struct.smb_hdr** %7, align 8
  %34 = load %struct.smb_hdr*, %struct.smb_hdr** %8, align 8
  %35 = call i32 @SendReceive(i32 %31, %struct.cifs_ses* %32, %struct.smb_hdr* %33, %struct.smb_hdr* %34, i32* %9, i32 0)
  ret i32 %35
}

declare dso_local i32 @get_next_mid(i32) #1

declare dso_local i32 @SendReceive(i32, %struct.cifs_ses*, %struct.smb_hdr*, %struct.smb_hdr*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
