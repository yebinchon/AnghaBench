; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2pdu.c_fill_small_buf.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2pdu.c_fill_small_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_tcon = type { i32 }
%struct.smb2_sync_pdu = type { i32, i32 }

@smb2_req_struct_sizes = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.cifs_tcon*, i8*, i32*)* @fill_small_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_small_buf(i32 %0, %struct.cifs_tcon* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cifs_tcon*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.smb2_sync_pdu*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.cifs_tcon* %1, %struct.cifs_tcon** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %struct.smb2_sync_pdu*
  store %struct.smb2_sync_pdu* %12, %struct.smb2_sync_pdu** %9, align 8
  %13 = load i32*, i32** @smb2_req_struct_sizes, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i64 @le16_to_cpu(i32 %14)
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %10, align 4
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 @memset(i8* %18, i32 0, i32 256)
  %20 = load %struct.smb2_sync_pdu*, %struct.smb2_sync_pdu** %9, align 8
  %21 = getelementptr inbounds %struct.smb2_sync_pdu, %struct.smb2_sync_pdu* %20, i32 0, i32 1
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %24 = call i32 @smb2_hdr_assemble(i32* %21, i32 %22, %struct.cifs_tcon* %23)
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @cpu_to_le16(i32 %25)
  %27 = load %struct.smb2_sync_pdu*, %struct.smb2_sync_pdu** %9, align 8
  %28 = getelementptr inbounds %struct.smb2_sync_pdu, %struct.smb2_sync_pdu* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = add i64 %30, 4
  %32 = trunc i64 %31 to i32
  %33 = load i32*, i32** %8, align 8
  store i32 %32, i32* %33, align 4
  ret void
}

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @smb2_hdr_assemble(i32*, i32, %struct.cifs_tcon*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
