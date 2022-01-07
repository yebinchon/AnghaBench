; ModuleID = '/home/carl/AnghaBench/linux/fs/crypto/extr_bio.c_fscrypt_enqueue_decrypt_bio.c'
source_filename = "/home/carl/AnghaBench/linux/fs/crypto/extr_bio.c_fscrypt_enqueue_decrypt_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fscrypt_ctx = type { i32, %struct.bio* }
%struct.bio = type { i32 }

@completion_pages = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fscrypt_enqueue_decrypt_bio(%struct.fscrypt_ctx* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.fscrypt_ctx*, align 8
  %4 = alloca %struct.bio*, align 8
  store %struct.fscrypt_ctx* %0, %struct.fscrypt_ctx** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %5 = load %struct.fscrypt_ctx*, %struct.fscrypt_ctx** %3, align 8
  %6 = getelementptr inbounds %struct.fscrypt_ctx, %struct.fscrypt_ctx* %5, i32 0, i32 0
  %7 = load i32, i32* @completion_pages, align 4
  %8 = call i32 @INIT_WORK(i32* %6, i32 %7)
  %9 = load %struct.bio*, %struct.bio** %4, align 8
  %10 = load %struct.fscrypt_ctx*, %struct.fscrypt_ctx** %3, align 8
  %11 = getelementptr inbounds %struct.fscrypt_ctx, %struct.fscrypt_ctx* %10, i32 0, i32 1
  store %struct.bio* %9, %struct.bio** %11, align 8
  %12 = load %struct.fscrypt_ctx*, %struct.fscrypt_ctx** %3, align 8
  %13 = getelementptr inbounds %struct.fscrypt_ctx, %struct.fscrypt_ctx* %12, i32 0, i32 0
  %14 = call i32 @fscrypt_enqueue_decrypt_work(i32* %13)
  ret void
}

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @fscrypt_enqueue_decrypt_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
