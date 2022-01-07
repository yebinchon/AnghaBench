; ModuleID = '/home/carl/AnghaBench/linux/fs/ecryptfs/extr_keystore.c_pki_encrypt_session_key.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ecryptfs/extr_keystore.c_pki_encrypt_session_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i32 }
%struct.ecryptfs_auth_tok = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ecryptfs_crypt_stat = type { i32, i32 }
%struct.ecryptfs_key_record = type { i32 }
%struct.ecryptfs_msg_ctx = type { i32 }
%struct.ecryptfs_message = type opaque

@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Error generating tag 66 packet\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Error sending message to ecryptfsd: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"Failed to receive tag 67 packet from the user space daemon\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Error parsing tag 67 packet\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.key*, %struct.ecryptfs_auth_tok*, %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_key_record*)* @pki_encrypt_session_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pki_encrypt_session_key(%struct.key* %0, %struct.ecryptfs_auth_tok* %1, %struct.ecryptfs_crypt_stat* %2, %struct.ecryptfs_key_record* %3) #0 {
  %5 = alloca %struct.key*, align 8
  %6 = alloca %struct.ecryptfs_auth_tok*, align 8
  %7 = alloca %struct.ecryptfs_crypt_stat*, align 8
  %8 = alloca %struct.ecryptfs_key_record*, align 8
  %9 = alloca %struct.ecryptfs_msg_ctx*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ecryptfs_message*, align 8
  %13 = alloca i32, align 4
  store %struct.key* %0, %struct.key** %5, align 8
  store %struct.ecryptfs_auth_tok* %1, %struct.ecryptfs_auth_tok** %6, align 8
  store %struct.ecryptfs_crypt_stat* %2, %struct.ecryptfs_crypt_stat** %7, align 8
  store %struct.ecryptfs_key_record* %3, %struct.ecryptfs_key_record** %8, align 8
  store %struct.ecryptfs_msg_ctx* null, %struct.ecryptfs_msg_ctx** %9, align 8
  store i8* null, i8** %10, align 8
  store i64 0, i64* %11, align 8
  %14 = load %struct.ecryptfs_auth_tok*, %struct.ecryptfs_auth_tok** %6, align 8
  %15 = getelementptr inbounds %struct.ecryptfs_auth_tok, %struct.ecryptfs_auth_tok* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %7, align 8
  %20 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %7, align 8
  %23 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ecryptfs_code_for_cipher_string(i32 %21, i32 %24)
  %26 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %7, align 8
  %27 = call i32 @write_tag_66_packet(i32 %18, i32 %25, %struct.ecryptfs_crypt_stat* %26, i8** %10, i64* %11)
  store i32 %27, i32* %13, align 4
  %28 = load %struct.key*, %struct.key** %5, align 8
  %29 = getelementptr inbounds %struct.key, %struct.key* %28, i32 0, i32 0
  %30 = call i32 @up_write(i32* %29)
  %31 = load %struct.key*, %struct.key** %5, align 8
  %32 = call i32 @key_put(%struct.key* %31)
  %33 = load i32, i32* %13, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %4
  %36 = load i32, i32* @KERN_ERR, align 4
  %37 = call i32 (i32, i8*, ...) @ecryptfs_printk(i32 %36, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %73

38:                                               ; preds = %4
  %39 = load i8*, i8** %10, align 8
  %40 = load i64, i64* %11, align 8
  %41 = call i32 @ecryptfs_send_message(i8* %39, i64 %40, %struct.ecryptfs_msg_ctx** %9)
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load i32, i32* @KERN_ERR, align 4
  %46 = load i32, i32* %13, align 4
  %47 = call i32 (i32, i8*, ...) @ecryptfs_printk(i32 %45, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  br label %73

48:                                               ; preds = %38
  %49 = load %struct.ecryptfs_msg_ctx*, %struct.ecryptfs_msg_ctx** %9, align 8
  %50 = bitcast %struct.ecryptfs_message** %12 to i8**
  %51 = call i32 @ecryptfs_wait_for_response(%struct.ecryptfs_msg_ctx* %49, i8** %50)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %48
  %55 = load i32, i32* @KERN_ERR, align 4
  %56 = call i32 (i32, i8*, ...) @ecryptfs_printk(i32 %55, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0))
  %57 = load i32, i32* @EIO, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %13, align 4
  br label %73

59:                                               ; preds = %48
  %60 = load %struct.ecryptfs_key_record*, %struct.ecryptfs_key_record** %8, align 8
  %61 = load %struct.ecryptfs_message*, %struct.ecryptfs_message** %12, align 8
  %62 = bitcast %struct.ecryptfs_message* %61 to i8*
  %63 = call i32 @parse_tag_67_packet(%struct.ecryptfs_key_record* %60, i8* %62)
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %13, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = load i32, i32* @KERN_ERR, align 4
  %68 = call i32 (i32, i8*, ...) @ecryptfs_printk(i32 %67, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %69

69:                                               ; preds = %66, %59
  %70 = load %struct.ecryptfs_message*, %struct.ecryptfs_message** %12, align 8
  %71 = bitcast %struct.ecryptfs_message* %70 to i8*
  %72 = call i32 @kfree(i8* %71)
  br label %73

73:                                               ; preds = %69, %54, %44, %35
  %74 = load i8*, i8** %10, align 8
  %75 = call i32 @kfree(i8* %74)
  %76 = load i32, i32* %13, align 4
  ret i32 %76
}

declare dso_local i32 @write_tag_66_packet(i32, i32, %struct.ecryptfs_crypt_stat*, i8**, i64*) #1

declare dso_local i32 @ecryptfs_code_for_cipher_string(i32, i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @key_put(%struct.key*) #1

declare dso_local i32 @ecryptfs_printk(i32, i8*, ...) #1

declare dso_local i32 @ecryptfs_send_message(i8*, i64, %struct.ecryptfs_msg_ctx**) #1

declare dso_local i32 @ecryptfs_wait_for_response(%struct.ecryptfs_msg_ctx*, i8**) #1

declare dso_local i32 @parse_tag_67_packet(%struct.ecryptfs_key_record*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
